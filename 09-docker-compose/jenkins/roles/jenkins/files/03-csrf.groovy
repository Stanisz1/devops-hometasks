/*
   Configures CSRF protection in global security settings.
 */

import hudson.security.csrf.DefaultCrumbIssuer
import jenkins.model.Jenkins

if(!Jenkins.instance.isQuietingDown()) {
    def j = Jenkins.instance
    if(j.getCrumbIssuer() != null) {
        j.setCrumbIssuer(null)
        j.save()
        println 'CSRF Protection configuration has changed.  Disabled CSRF Protection.'
    }
    else {
        println 'Nothing changed.  CSRF Protection already configured.'
    }
}
else {
    println "Shutdown mode enabled.  Configure CSRF protection SKIPPED."
}