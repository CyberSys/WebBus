
| Platform          | Supported |
|-------------------|-----------|
| Crazy Games       | ![✔️](https://img.shields.io/badge/Supported-green) |
| Yandex Games      | ![✔️](https://img.shields.io/badge/Supported-green) |
| Poki              | ![❌](https://img.shields.io/badge/Not_Supported-red) |
| VK                | ![✍️](https://img.shields.io/badge/In_Progress-yellow) |

Setting data:

```gdscript
var data:Dictionary = {"Key": "Value"}
WebBus.set_data(data)

```

Getting data:

```gdscript
var keys:Array = ["Key"]
var result = await WebBus.get_data(keys)
print(result) # {"Key": "Value"}
```

!!! NOTE 
    For CrazyGames, the functions set_stats() and get_stats() are identical to the functions set_data() and get_data(), respectively.


Setting stats:

```gdscript
var data:Dictionary = {"Key": 12345}
WebBus.set_stats(data)

```

Getting stats:

```gdscript
var keys:Array = ["Key"]
var result = await WebBus.get_stats(keys)
print(result) # {"Key": 12345.0}
```
