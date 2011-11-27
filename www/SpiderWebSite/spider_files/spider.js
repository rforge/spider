// Created by iWeb 3.0.4 local-build-20111123

//~ function writeMovie1()
//~ {detectBrowser();if(windowsInternetExplorer)
//~ {document.write('<object id="id4" classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" width="391" height="260" style="height: 244px; left: 32px; position: absolute; top: 28px; width: 391px; z-index: 1; "><param name="src" value="Media/Spider3-Medium_2.flv" /><param name="controller" value="false" /><param name="autoplay" value="true" /><param name="scale" value="tofit" /><param name="volume" value="100" /><param name="loop" value="true" /></object>');}
//~ else if(isiPhone)
//~ {document.write('<object id="id4" type="video/quicktime" width="391" height="260" style="height: 244px; left: 32px; position: absolute; top: 28px; width: 391px; z-index: 1; "><param name="src" value="spider_files/Spider3-Medium_2.jpg"/><param name="target" value="myself"/><param name="href" value="../Media/Spider3-Medium_2.flv"/><param name="controller" value="false"/><param name="scale" value="tofit"/></object>');}
//~ else
//~ {document.write('<object id="id4" type="video/quicktime" width="391" height="260" data="Media/Spider3-Medium_2.flv" style="height: 244px; left: 32px; position: absolute; top: 28px; width: 391px; z-index: 1; "><param name="src" value="Media/Spider3-Medium_2.flv"/><param name="controller" value="false"/><param name="autoplay" value="true"/><param name="scale" value="tofit"/><param name="volume" value="100"/><param name="loop" value="true"/></object>');}}
//~ setTransparentGifURL('Media/transparent.gif');function hostedOnDM()
//~ {return false;}
//~ function onPageLoad()
//~ {loadMozillaCSS('spider_files/spiderMoz.css')
//~ adjustLineHeightIfTooBig('id1');adjustFontSizeIfTooBig('id1');adjustLineHeightIfTooBig('id2');adjustFontSizeIfTooBig('id2');adjustLineHeightIfTooBig('id3');adjustFontSizeIfTooBig('id3');detectBrowser();Widget.onload();fixupAllIEPNGBGs();fixAllIEPNGs('Media/transparent.gif');fixupIECSS3Opacity('id5');performPostEffectsFixups()}
//~ function onPageUnload()
//~ {Widget.onunload();}


// To insert Rupert's flash file.

function writeMovie1()
{detectBrowser();if(windowsInternetExplorer)
{document.write('<object id="id4" classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" width="391" height="260" style="height: 244px; left: 32px; position: absolute; top: 28px; width: 391px; z-index: 1; "><param name="src" value="web.swf" /><param name="controller" value="false" /><param name="autoplay" value="true" /><param name="scale" value="tofit" /><param name="volume" value="100" /><param name="loop" value="true" /></object>');}
else if(isiPhone)
{document.write('<object id="id4" type="application/x-shockwave-flash" width="391" height="260" style="height: 244px; left: 32px; position: absolute; top: 28px; width: 391px; z-index: 1; "><param name="src" value="spider_files/Spider3-Medium_2.jpg"/><param name="target" value="myself"/><param name="href" value="../Media/web.swf"/><param name="controller" value="false"/><param name="scale" value="tofit"/></object>');}
else
{document.write('<object id="id4" type="application/x-shockwave-flash" width="391" height="260" data="Media/web.swf" style="height: 244px; left: 32px; position: absolute; top: 28px; width: 391px; z-index: 1; "><param name="src" value="Media/web.swf"/><param name="controller" value="false"/><param name="autoplay" value="true"/><param name="scale" value="tofit"/><param name="volume" value="100"/><param name="loop" value="true"/></object>');}}
setTransparentGifURL('Media/transparent.gif');function hostedOnDM()
{return false;}
function onPageLoad()
{loadMozillaCSS('spider_files/spiderMoz.css')
adjustLineHeightIfTooBig('id1');adjustFontSizeIfTooBig('id1');adjustLineHeightIfTooBig('id2');adjustFontSizeIfTooBig('id2');adjustLineHeightIfTooBig('id3');adjustFontSizeIfTooBig('id3');detectBrowser();Widget.onload();fixupAllIEPNGBGs();fixAllIEPNGs('Media/transparent.gif');fixupIECSS3Opacity('id5');performPostEffectsFixups()}
function onPageUnload()
{Widget.onunload();}