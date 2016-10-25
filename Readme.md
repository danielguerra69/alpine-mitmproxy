
# About

![Mitmproxy-logo](https://mitmproxy.org/mitmproxy-long.png) [Mitmproxy](http://mitmproxy.org) on alpine linux.
Mitmproxy is a man in the middle proxy.

# Usage

```bash
mkdir mitmproxy
cd mitmproxy
docker run -p 8080:8080 -v $(pwd):/root/.mitmproxy -ti mitmproxy
```

This leaves the certificates in your current dir.
Copy mitmproxy-ca.pem to your browser and add it
to your certificate authority. Set your browser
proxy or your proxy environment variable.
In your browser go to a https site. If all went
well the ssl lock is green. You can check the
certificates issuer to see if it has "mitmproxy".
