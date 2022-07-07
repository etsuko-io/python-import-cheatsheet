### Test location relative to an app folder

All three options work
- [src1] On the same level, src is not a package
- [src2] Inside the app folder
- [src3] On the same level, src is a package

### Avoiding ImportErrors in Python
Use  

```
python -m package.module
```
instead of 
```
python package/module.py
```
to avoid ImportErrors.

So
- don't modify `sys.path`
- don't use `PYTHONPATH` either

Source and more details: https://rednafi.github.io/reflections/how-not-to-run-a-script-in-python.html

### Conclusions
- there's no need to make the src folder a package

