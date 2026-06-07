# Apache NiFi 2.x Tutorial

Begleitmaterial zur Schulung "Apache NiFi 2.x: Datenflüsse entwerfen, betreiben und skalieren".

## Inhalt

| Ordner | Inhalt |
|---|---|
| [`praesentation/`](praesentation/) | Foliensatz als PDF (`apache_nifi_schulung.pdf`, 100 Folien) |
| [`labs/`](labs/) | Hands-on-Übungen, Szenarien und Trainer-Spickzettel als PDF |
| [`flows/`](flows/) | NiFi-Flow-Definitionen (JSON) zum Import auf die Canvas |
| [`samples/`](samples/) | Beispiel-Eingabedaten (CSV/JSON) für die Labs |
| [`python_processors/`](python_processors/) | Beispiel für einen nativen Python-Prozessor (NiFi 2.x) |

## Flows importieren

In der NiFi-UI: auf die Canvas ziehen → **Process Group** → **Import from File** → die gewünschte
`flows/*.json` auswählen. Die Dateinamen entsprechen den Labs in `labs/`.

| Flow | Passendes Lab |
|---|---|
| `lab_0_einfacher_flow.json` | HANDS_ON_Erster_Flow |
| `lab_f1_pipeline_file.json` … `lab_f5_aggregation_rollup.json` | HANDS_ON file-basierte Labs |
| `lab_1_…` … `lab_4_…` | HANDS_ON DB-basierte Labs |
| `szenario_1_…`, `szenario_1f_…` | SZENARIO Record-ETL |
| `uebung_1_…`, `uebung_2_…` | UEBUNG 1 / 2 |
