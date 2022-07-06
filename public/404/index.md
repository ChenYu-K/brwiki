---
layout: false
comments: false
title: 404
permalink: /404
---

<!DOCTYPE html>
<html lang="en" >

<head>

  <meta charset="UTF-8">
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />


  <title>CodePen - Fargo 404</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Dosis:400,300,500,800'>
  
<style>
html,
body {
  height: 100%;
  min-height: 450px;
  font-family: "Dosis", sans-serif;
  font-size: 32px;
  font-weight: 500;
  color: #5d7399;
}

.content {
  height: 100%;
  position: relative;
  z-index: 1;
  background-color: #d2e1ec;
  background-image: linear-gradient(to bottom, #bbcfe1 0%, #e8f2f6 80%);
  overflow: hidden;
}

.snow {
  position: absolute;
  top: 0;
  left: 0;
  pointer-events: none;
  z-index: 20;
}

.main-text {
  padding: 20vh 20px 0 20px;
  text-align: center;
  line-height: 2em;
  font-size: 5vh;
}

.home-link {
  font-size: 0.6em;
  font-weight: 400;
  color: inherit;
  text-decoration: none;
  opacity: 0.6;
  border-bottom: 1px dashed rgba(93, 115, 153, 0.5);
}
.home-link:hover {
  opacity: 1;
}

.ground {
  height: 160px;
  width: 100%;
  position: absolute;
  bottom: 0;
  left: 0;
  background: #f6f9fa;
  box-shadow: 0 0 10px 10px #f6f9fa;
}
.ground:before, .ground:after {
  content: "";
  display: block;
  width: 250px;
  height: 250px;
  position: absolute;
  top: -62.5px;
  z-index: -1;
  background: transparent;
  transform: scaleX(0.2) rotate(45deg);
}
.ground:after {
  left: 50%;
  margin-left: -166.6666666667px;
  box-shadow: -255px 345px 15px #8496b4, -595px 605px 15px #a4b1c8, -920px 880px 15px #97a6c0, -1190px 1210px 15px #94a3be, -1520px 1480px 15px #a1aec6, -1830px 1770px 15px #8798b6, -2110px 2090px 15px #aab6cb, -2425px 2375px 15px #b7c1d3, -2680px 2720px 15px #8798b6, -3045px 2955px 15px #8193b2, -3335px 3265px 15px #b0bccf, -3590px 3610px 15px #bac4d5, -3940px 3860px 15px #97a6c0, -4175px 4225px 15px #8798b6, -4470px 4530px 15px #9aa9c2, -4785px 4815px 15px #bac4d5;
}
.ground:before {
  right: 50%;
  margin-right: -166.6666666667px;
  box-shadow: 255px -345px 15px #8798b6, 575px -625px 15px #aab6cb, 860px -940px 15px #8e9eba, 1215px -1185px 15px #a7b4c9, 1465px -1535px 15px #91a1bc, 1770px -1830px 15px #a7b4c9, 2090px -2110px 15px #bac4d5, 2430px -2370px 15px #94a3be, 2720px -2680px 15px #bac4d5, 2965px -3035px 15px #a7b4c9, 3285px -3315px 15px #aab6cb, 3595px -3605px 15px #bac4d5, 3910px -3890px 15px #7e90b0, 4240px -4160px 15px #adb9cd, 4525px -4475px 15px #8798b6, 4835px -4765px 15px #bac4d5;
}

.mound {
  margin-top: -80px;
  font-weight: 800;
  font-size: 180px;
  text-align: center;
  color: #dd4040;
  pointer-events: none;
}
.mound:before {
  content: "";
  display: block;
  width: 600px;
  height: 200px;
  position: absolute;
  left: 50%;
  margin-left: -300px;
  top: 50px;
  z-index: 1;
  border-radius: 100%;
  background-color: #e8f2f6;
  background-image: linear-gradient(to bottom, #dee8f1, #f6f9fa 60px);
}
.mound:after {
  content: "";
  display: block;
  width: 28px;
  height: 6px;
  position: absolute;
  left: 50%;
  margin-left: -150px;
  top: 68px;
  z-index: 2;
  background: #dd4040;
  border-radius: 100%;
  transform: rotate(-15deg);
  box-shadow: -56px 12px 0 1px #dd4040, -126px 6px 0 2px #dd4040, -196px 24px 0 3px #dd4040;
}

.mound_text {
  transform: rotate(6deg);
}

.mound_spade {
  display: block;
  width: 35px;
  height: 30px;
  position: absolute;
  right: 50%;
  top: 42%;
  margin-right: -250px;
  z-index: 0;
  transform: rotate(35deg);
  background: #dd4040;
}
.mound_spade:before, .mound_spade:after {
  content: "";
  display: block;
  position: absolute;
}
.mound_spade:before {
  width: 40%;
  height: 30px;
  bottom: 98%;
  left: 50%;
  margin-left: -20%;
  background: #dd4040;
}
.mound_spade:after {
  width: 100%;
  height: 30px;
  top: -55px;
  left: 0%;
  box-sizing: border-box;
  border: 10px solid #dd4040;
  border-radius: 4px 4px 20px 20px;
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no" >
  <div class="content">
  <canvas class="snow" id="snow"></canvas>
  <div class="main-text">
    <h1>Aw jeez.<br/>That page has gone missing.</h1><a class="home-link" href="#">Hitch a ride back home.</a>
  </div>
  <div class="ground">
    <div class="mound"> 
      <div class="mound_text">404</div>
      <div class="mound_spade"></div>
    </div>
  </div>
</div>
    <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

  
      <script id="rendered-js" >
(function () {
  function ready(fn) {
    if (document.readyState != 'loading') {
      fn();
    } else {
      document.addEventListener('DOMContentLoaded', fn);
    }
  }

  function makeSnow(el) {
    var ctx = el.getContext('2d');
    var width = 0;
    var height = 0;
    var particles = [];

    var Particle = function () {
      this.x = this.y = this.dx = this.dy = 0;
      this.reset();
    };

    Particle.prototype.reset = function () {
      this.y = Math.random() * height;
      this.x = Math.random() * width;
      this.dx = Math.random() * 1 - 0.5;
      this.dy = Math.random() * 0.5 + 0.5;
    };

    function createParticles(count) {
      if (count != particles.length) {
        particles = [];
        for (var i = 0; i < count; i++) {
          particles.push(new Particle());
        }
      }
    }

    function onResize() {
      width = window.innerWidth;
      height = window.innerHeight;
      el.width = width;
      el.height = height;

      createParticles(width * height / 10000);
    }

    function updateParticles() {
      ctx.clearRect(0, 0, width, height);
      ctx.fillStyle = '#f6f9fa';

      particles.forEach(function (particle) {
        particle.y += particle.dy;
        particle.x += particle.dx;

        if (particle.y > height) {
          particle.y = 0;
        }

        if (particle.x > width) {
          particle.reset();
          particle.y = 0;
        }

        ctx.beginPath();
        ctx.arc(particle.x, particle.y, 5, 0, Math.PI * 2, false);
        ctx.fill();
      });

      window.requestAnimationFrame(updateParticles);
    }

    onResize();
    updateParticles();

    window.addEventListener('resize', onResize);
  }

  ready(function () {
    var canvas = document.getElementById('snow');
    makeSnow(canvas);
  });
})();
//# sourceURL=pen.js
    </script>

  

</body>

</html>
 
