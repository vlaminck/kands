<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Maps and Directions</title>
	<style type="text/css">
	p {
		line-height: 1.5;
		text-indent: 40px;
		/*font-family: Courier New;*/
	}

	h1.center {
		text-align: center;
	}

	span.italic {
		font-style: italic;
	}

	span.external-link {
		font-size: 0.8em;
	}

	span.external-link a {
		color: #333333;
		text-transform: none;
	}

	div.map-container {
		text-align: center;
	}

	</style>
</head>

<body>
<div class="paragraph">
	<h1 class="center page-header">Maps & Information</h1>
</div>

<div class="paragraph">
	<h1 class="not-h1 euphorigenic">Ceremony</h1><br/>
	The ceremony will be held at the Sunken Garden at the Como Conservatory in St. Paul.
	The doors open at 6:30 PM sharp, and we're planning on having the ceremony at 6:45 PM,
	and then taking pictures until we're kicked out at 8 PM sharp.
	Park in the "Palm Lot" and use the entrance in the "Palm Dome" (see map below).
	The Sunken Garden will be to the left. Please note that it will be standing room only.

	%{--The ceremony will be held at the Sunken Garden at the Como Conservatory in St. Paul.--}%
	%{--The doors open at 6:30 PM sharp, and we're planning on having the ceremony at 6:45,--}%
	%{--and then taking pictures until we're kicked out at 8 PM sharp.--}%
	%{--It will be standing room only.--}%

	%{--There will only be one entrance that will be unlocked and available for our use.--}%
	%{--Two garden wings extend to the left and right of this central room, and the "Sunken Garden,"--}%
	%{--where the ceremony is to be held, is in this left-most wing. Park in the "Palm Lot" (map image below)--}%
	%{--or along the signed-marked street parking and proceed to <span class="italic">this entrance only</span>.--}%
	<br/>
	<br/>


	<div class="map-container">
		<g:img dir="images" file="sunkenMap2.png" style="width:650px;"/>
		<span class="external-link">
			<g:link url="http://www.comozooconservatory.org/attractions/gardens/sunken-gardens/#/info"
							target="_blank">Go Here To Visit the Website</g:link>
			––
			<g:link
				url="http://g.co/maps/sg4wn"
				class="external-link" target="_blank">
				Get Directions From Google
			</g:link>
		</span>
	</div>

	<br/>
	<br/>

	<h1 class="not-h1 euphorigenic">Reception</h1><br/>
	The reception will be at Pizza Lucé in downtown Minneapolis.
	Anyone is welcome to leave Como after the ceremony ends to start
	eating and drinking at Pizza Lucé while pictures are being taken.
	We’d love to treat everyone to tons of great food, beer, and wine,
	so please eat a late lunch so that you'll still be hungry!
	Use the private entrance to the 2nd Avenue Room located on 2nd Avenue.
	Pizza Lucé is located near several surface lots and parking ramps (see maps below).
	There is also metered on-street parking surrounding it.
	%{--The reception will be at Pizza Luce in downtown Minneapolis.--}%
	%{--It starts whenever the ceremony ends! We can't wait to treat everyone to tons of great food, beer, and wine,--}%
	%{--so please eat a late lunch so that you'll still be hungry!--}%

	%{--Pizza Luce is located near several surface lots and parking ramps (map images below).--}%
	%{--There is also metered on-street parking surrounding the location.--}%
	<br/>
	<br/>

	<span class="external-link"
				style="position:absolute; width:100%; text-align: center; font-size:1em;">
		<g:link
			url="http://maps.google.com/maps/ms?msid=215605481229555627214.0004b60ebbc35c9540501&msa=0" target="_blank"
			class="external-link" style="width:100%; text-align: center;">
			Directions from Como to Lucé
		</g:link>
	</span>
	<br/>
	<br/>

	<div class="map-container">
		%{--<span class="external-link">--}%
		%{--<g:link--}%
		%{--url="http://maps.google.com/maps/ms?msid=215605481229555627214.0004b60ebbc35c9540501&msa=0" target="_blank"--}%
		%{--class="external-link">--}%
		%{--Directions from Como to Lucé--}%
		%{--</g:link>--}%
		%{--</span>--}%
		<img src="${g.createLink(url: "http://2ndave.pizzaluce.com/assets/img/map-suburbs.gif")}" alt="blank"
				 style="background-color: black; width:500px;">
		<img src="${g.createLink(url: "http://2ndave.pizzaluce.com/assets/img/map-downtown.gif")}" alt="blank"
				 style="background-color: black; width: 500px;">
		<br/>
		<span class="external-link">
			<g:link
				url="http://2ndave.pizzaluce.com/#cb-local" target="_blank"
				class="external-link">
				Go Here To Visit the Website
			</g:link>
			––
			<g:link
				url="http://g.co/maps/wzgb4"
				class="external-link" target="_blank">
				Get Directions From Google
			</g:link>
		</span>
	</div>
	<br/>
	<br/>

	<h1 class="not-h1 euphorigenic">Hotel</h1><br/>
	Unfortunately, we don't have a large enough guest list to reserve a block of rooms anywhere.
	We'll be staying at the Hotel Minneapolis, and we'd love anyone who can afford it to stay there as well!
	We want everyone to have fun and be safe, so if you have any questions whatsoever about where to stay,
	please contact us or leave a comment on this site and we'll figure it out with you.


	%{--Unfortunately, we don't have a large enough guest list to reserve a block of rooms anywhere.--}%
	%{--We'll be staying at the Hotel Minneapolis, and we'd love anyone who can afford it to stay there as well!--}%
	%{--If you have any questions whatsoever about where to stay, please contact us or leave a comment on--}%
	%{--this site and we'll figure it out with you.--}%
	<br/>

	<div class="map-container">
		<span class="external-link">
			<g:link
				url="http://www.thehotelminneapolis.com/" target="_blank"
				class="external-link">
				Go Here To Visit the Website
			</g:link>
			––
			<g:link
				url="http://g.co/maps/ytjc3"
				class="external-link" target="_blank">
				Get Directions From Google
			</g:link>
		</span>
	</div>

	%{--<br/>--}%
	%{--<br/>--}%

	%{--<h1 class="not-h1 euphorigenic">Shuttle</h1><br/>--}%
	%{--We're probably going to be providing a shuttle, but we don't know exactly where and when just yet.--}%
	%{--We may have one pick people up from Hotel Minneapolis, go to Como, and then to Luce. Or we may have one--}%
	%{--take us from Como to Luce and then anyone parked at Como would have to get their cars the next day.--}%
	%{--Bottom line, we want everyone to have fun and get home safely.--}%
	%{--So please let us know if you have questions or suggestions and we'll let you know what we come up with.--}%
</div>

<br/>
<br/>
<br/>
<br/>

</body>
</html>