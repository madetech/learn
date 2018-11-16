# Cross Browser Testing

An engineer should be able to validate their front end across multiple browsers and devices in order to product a perfect design.

An engineer should use tools like [caniuse.com](https://caniuse.com/) to ensure the CSS properties they want to use will be supported by all their target browsers, before even cutting some CSS.

Often an engineer will be missing some of the browsers they need to test against [Mainly IE] for this they'd install a Virtual Machine (VM). Microsoft make their VMs available on [modern.ie](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/). 

An easy approach is to use a SaaS tool such a [BrowserStack](https://www.browserstack.com) which allows testing on a myriad of real devices and browsers, without requiring physical access to those devices or those browsers installed on your own machine.

While testing their front end an Engineer should use a tool like [Pixel Perfect](http://www.welldonecode.com/perfectpixel/) to overlay the expected design, and then adjust their HTML/CSS using the browsers web inspector.

## Which browsers to test

Usually, delivery teams will agree with the customer a list of supported browsers an engineer should test on. However, as a rule of thumb they should always test against:

- [Firefox](https://www.mozilla.org/en-GB/firefox/new/)
- [Google Chrome](https://www.google.co.uk/chrome/)
- [Safari](https://support.apple.com/en-us/HT204416)
- [Microsoft Edge](https://www.microsoft.com/en-gb/windows/microsoft-edge)

**Recommended in delivery, but not required for the core skill**

- [Interet Explorer 11](https://www.microsoft.com/en-gb/download/internet-explorer-11-for-windows-7-details.aspx)

IE11 is recommended as its the last version of IE pre-installed on Windows machines that doesn't auto update. However, if the user stats point to low usage (less than 2%) then a team could make a case to not support it.

## A Caveat, and its controversial.

While we should always strive to realise a Designer’s vision, there will always be some elements of the page (mainly typography) that will never match up.

Using the example of Typography an engineer should match the common sense things like `line-height`, `font-size`, `font-family`, there are some things they wont be able to control in a scenario where dynamic text is being used. Kerning is the best example of this. An engineer can broadly apply a `letter-spacing` to all the letters but doing this on a per letter basis is not scalable when the copy is liable to change.
