
const scanner = require("sonarqube-scanner").default;

scanner({
  serverUrl: "http://98.82.91.27:9000/", 
  options: {
    "sonar.login": "admin",
    "sonar.password":"admin1",
    "sonar.projectKey": "hunter",
    "sonar.projectName": "hunter-dev-frontEnd",
    "sonar.projectDescription": "hunter",
    "sonar.sourceEncoding": "UTF-8",
    "sonar.sources": "./src",
    "sonar.test.inclusions": "**/*.test.js,**/__test__/**/*.js", 
    "sonar.exclusions": "**/node_modules/**", 
    "sonar.tests": "./src",
    "sonar.testExecutionReportPaths": "test-report.xml",  
    "sonar.javascript.lcov.reportPaths": "coverage/lcov.info",
  },
}, () => process.exit());
