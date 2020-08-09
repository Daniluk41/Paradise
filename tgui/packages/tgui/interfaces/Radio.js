import { map } from 'common/collections';
import { toFixed } from 'common/math';
import { useBackend } from '../backend';
import { Box, Button, Fragment, LabeledList, NumberInput, Section } from '../components';
import { RADIO_CHANNELS } from '../constants';
import { Window } from '../layouts';

export const Radio = (props, context) => {
  const { act, data } = useBackend(context);
  const {
    freqlock,
    frequency,
    minFrequency,
    maxFrequency,
    canReset,
    listening,
    broadcasting,
    loudspeaker,
    has_loudspeaker,
    subspace,
    subspaceSwitchable,
  } = data;
  const tunedChannel = RADIO_CHANNELS
    .find(channel => channel.freq === frequency);
  const channels = map((value, key) => ({
    name: key,
    status: !!value,
  }))(data.channels);
  return (
    <Window>
      <Window.Content>
        <Section>
          <LabeledList>
            <LabeledList.Item label="Frequency">
              {freqlock && (
                <Box inline color="light-gray">
                  {toFixed(frequency / 10, 1) + ' kHz'}
                </Box>
              ) || (
                <Fragment>
                  <NumberInput
                    animate
                    unit="kHz"
                    step={0.2}
                    stepPixelSize={10}
                    minValue={minFrequency / 10}
                    maxValue={maxFrequency / 10}
                    value={frequency / 10}
                    format={value => toFixed(value, 1)}
                    onDrag={(e, value) => act('frequency', {
                      adjust: (value - frequency / 10),
                    })} />
                  <Button
                    icon="undo"
                    content=""
                    disabled={!canReset}
                    tooltip="Reset"
                    onClick={() => act('frequency', {
                      tune: 'reset',
                    })} />
                </Fragment>
              )}
              {tunedChannel && (
                <Box inline color={tunedChannel.color} ml={2}>
                  [{tunedChannel.name}]
                </Box>
              )}
            </LabeledList.Item>
            <LabeledList.Item label="Audio">
              <Button
                textAlign="center"
                width="37px"
                icon={listening ? 'volume-up' : 'volume-mute'}
                selected={listening}
                color={listening ? "" : "bad"}
                tooltip={listening ? "Disable Incoming" : "Enable Incoming"}
                onClick={() => act('listen')} />
              <Button
                textAlign="center"
                width="37px"
                icon={broadcasting ? 'microphone' : 'microphone-slash'}
                selected={broadcasting}
                tooltip={broadcasting ? "Disable Hotmic" : "Enable Hotmic"}
                onClick={() => act('broadcast')} />
              {!!has_loudspeaker && (
                <Button
                  ml={1}
                  icon="bullhorn"
                  selected={loudspeaker}
                  content="Loudspeaker"
                  onClick={() => act('loudspeaker')} />
              )}
              {!!subspaceSwitchable && (
                <Button
                  ml={1}
                  icon="broadcast-tower"
                  selected={subspace}
                  content={`Subspace Tx`}
                  onClick={() => act('subspace')} />
              )}
            </LabeledList.Item>
            {(!!subspace) && (
              <LabeledList.Item label="Channels">
                {channels.length === 0 && (
                  <Box inline color="bad">
                    No encryption keys installed.
                  </Box>
                )}
                {channels.map(channel => (
                  <Box key={channel.name}>
                    <Button
                      icon={channel.status ? 'check-square-o' : 'square-o'}
                      selected={channel.status}
                      content={channel.name}
                      onClick={() => act('channel', {
                        channel: channel.name,
                      })} />
                  </Box>
                ))}
              </LabeledList.Item>
            )}
          </LabeledList>
        </Section>
      </Window.Content>
    </Window>
  );
};
