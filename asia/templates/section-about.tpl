

<div class="about" id="sectionContent">
  <div class="bg-page row">
    <div class="layer">
      <div class="bg-shadow"></div>
      <div class="bg-wall"></div>
      <div class="bg-img" style="background-image: url('{$SITE_URL}/images/sections/{$section.sectionId}/original.jpg');"></div>
    </div>
  </div>
  <div class="bg-svg row">
    <div class="container">
      <div class="bg-lines">
        <svg class="svg-line line-left">
        	<line x1="100%" y1="0" x2="100%" y2="100%" />
        </svg>
        <svg class="svg-line line-center">
        	<line x1="50%" y1="0" x2="50%" y2="100%" />
        </svg>
        <svg class="svg-line line-right">
        	<line x1="0" y1="0" x2="0" y2="100%" />
        </svg>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="container">
      <div class="main-content align-center-sm">
        <div class="middle-tab">
          <div class="about-content">
            <div class="text-rotate pie-xs-2 m-v-30" data-aos="zoom-in" data-aos-delay="2500">
              <span>{$section.summary|smarty:nodefaults}</span>
            </div>
            <div class="text-l-spacing pie-xs-8 m-v-30">
              {$section.content|smarty:nodefaults}
              <g class="dot-circles">
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle"><circle r="2" cx="50%" cy="50%"/></circle></svg>
                <svg class="dot-circle">
                  <circle class="circle-core" r="5" cx="50%" cy="50%"/></circle>
                  <circle class="circle-skin" r="25" cx="50%" cy="50%"/></circle>
                </svg>
              </g>
            </div>

            <div class="social pie-xs-2 m-v-30">
              <ul>
                {if $config.InstagramLink !=''}<li data-aos="fade-left" data-aos-delay="1250"><a href="{$config.InstagramLink}"><i class="i-ls-instagram"></i></a></li>{/if}
                {if $config.facebookLink !=''}<li data-aos="fade-left" data-aos-delay="1000"><a href="{$config.facebookLink}"><i class="i-ls-facebook"></i></a></li>{/if}
                {if $config.telegramLink !=''}<li data-aos="fade-left" data-aos-delay="750"><a href="{$config.telegramLink}"><i class="i-ls-telegram"></i></a></li>{/if}
                {if $config.okLink !=''}<li data-aos="fade-left" data-aos-delay="500"><a href="{$config.okLink}"><i class="i-ls-ok"></i></a></li>{/if}
              </ul>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>

