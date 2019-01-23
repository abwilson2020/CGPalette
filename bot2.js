console.log('The image bot is starting');

var Twit = require('twit');

var config = require('./config');
var T = new Twit(config);

var exec = require('child_process').exec;
var fs = require('fs');

tweetIt();
setInterval(tweetIt, 1000*60*60*2);

function tweetIt(){
	
	var cmd = 'C:\\Users\\hillt\\Downloads\\processing-3.4-windows64\\processing-3.4\\processing-java --sketch=C:\\Users\\hillt\\Documents\\Bot\\node2/image2 --run'
	exec(cmd, processing);
	
	function processing(){
		var filename = 'C:\\Users\\hillt\\Documents\\Bot\\node2\\image2/output.png';
		var params = {
			encoding: 'base64'
		}

		console.log('generated image');
		var b64 = fs.readFileSync(filename, params);
		T.post('media/upload',{media_data: b64}, uploaded);

		function uploaded(err, data, response){
			//this is where I will tweet
			var id = data.media_id_string;
			var tweet = {
				status: 'Generated Color Palette #colors #palette #ciphergraphics #cgpalette ',
				media_ids: [id]
			}	
			T.post('statuses/update', tweet, tweeted);
		}
	}

	function tweeted(err, data, response) {
	  if (err) {
	  	console.log("Something went wrong");
	  }  else {
	  	console.log("Sent Tweet");
	  }
	}
}