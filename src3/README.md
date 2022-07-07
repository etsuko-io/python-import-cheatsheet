### src as a package 
- src3 is a package
- `app` and `tests` live on the same level
- src3 is marked as `Sources root` in PyCharm

Allowed absolute import paths within `app`:

```
from src3.app.domain.hello import HelloWorld
```

Allowed absolute import paths within `tests`:

```
from app.domain.hello import HelloWorld
from src3.app.domain.hello import HelloWorld
```


This doesn't work:

```
python app/main.py

Traceback (most recent call last):
  File "/Users/rubencronie/Dropbox/Documents/Development/python-import-cheatsheet/src3/app/main.py", line 1, in <module>
    from app.domain.bye import Bye
ModuleNotFoundError: No module named 'app'
make: *** [greet] Error 1
```

This does work:
```
python -m app.main

Hello World
Bye, world!

Process finished with exit code 0
```

- If you want to run your script from inside the src3 folder, you need to do `import app.xxx` 
- If you want to run your script from src3's parent folder, you need to `import src3.app.xxx` 

