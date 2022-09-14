# mlplack_example_2

mlpack example 2: Q learning

```mermaid
graph TD;
    0((Start))-->|Action 1: Do nothing|100[Guard];
    0-->|Action 2: Get vital item|100;
    100-->|Action 1: Evade|200[Final boss];
    100-->|Action 2: Fight, chance to die is fifty percent|200;
    200-->|Has vital item: yes|210[Game won];
    200-->|Has vital item: no|220[Game lost];
```

## Initial

State|Action 1|Action 2
-----|--------|--------
Start|1.0     |1.0
Guard|1.0     |1.0
Check|1.0     |1.0

## Final

State|Action 1|Action 2
-----|--------|--------
Start|0.0     |1.0
Guard|1.0     |0.5
Check|1.0     |0.0
