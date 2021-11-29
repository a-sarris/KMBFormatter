# KMBFormatter
A number formatter that adds K for thousands, M for millions and B for billions

Sample usage:

```
let formatter = KMBFormatter()
formatter.string(fromNumber: 1009) // 1K
formatter.string(fromNumber: 5000000) // 5M
formatter.string(fromNumber: 999999) // 999.9K
```

Used `ByteCountFormatter.swift` as a reference.
