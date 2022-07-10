## Background

YJ is a Frida-based scripting tool, just like using GDB scripting tool on GUN, it can easily show you the memory data you want to snoop on (even if it is non-debug in App)--------------------------------------------it is inspired by GEF

It can help you make better use of Frida in so binaries

## Environment

Oh no, it's just a python script, you don't need to rely on other environments, so it works right out of the box

## Installation

```sh
~ » git clone https://github.com/github546229768/YJ.git
~ » » cd YJ && chmod +x exp.py
```

## Use

`exp.py` -> It is a layout debugger and, of course, a script container for Frida

`frida_so.js` -> It is the core file that you use Frida to Hook the target program. You should do Hook here

`utli.js` -> It is a tool library that I use to encapsulate API, and you can extend it here

## Screenshot

![image-20220710222953578](/Users/hnhuangjingyu/Library/Application Support/typora-user-images/image-20220710222953578.png)

![image-20220710223410436](/Users/hnhuangjingyu/Library/Application Support/typora-user-images/image-20220710223410436.png)

## Conclusion

After two days and a night's struggle, I have completed its prototype, and it will be updated in the future

