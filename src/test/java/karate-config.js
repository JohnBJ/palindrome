function fn() {
    karate.configure('retry', { count: 5, interval: 5000 });
    karate.configure('connectTimeout', 20000);
    karate.configure('readTimeout', 30000);
    var env = karate.env
    karate.log("Environment---------",env)
    karate.configure('driver', { type: 'chrome',
    port: 8888,
    //executable: 'src/test/resources/chromedriver.exe',
    headless: false });

    karate.configure('afterScenario', function(){ if (karate.info.errorMessage) driver.screenshot() });
    var protocol = 'https';

    if(!env)
    {
      env = 'DEV';
    }
    var config = 
    {
       env: env,
       BaseUrl: protocol + '://https://xndev.com/palindrome'
    };
    
  return config;
}
