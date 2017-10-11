# TWCParty
# Author: Chia Yu Pai (Rytass)

FROM rytass/node-nginx

MAINTAINER chiayu@rytass.com

ENV HOME /root
ENV PORT 80
ENV DEBUG TWCParty:*
ENV NODE_ENV production

ADD nginx.conf /etc/nginx/conf.d/twcparty.conf
RUN chmod 644 /etc/nginx/conf.d/twcparty.conf
ADD dist/* /var/www/twcparty/
ADD static/index.html /var/www/twcparty/index.html

WORKDIR /var/www/twcparty

EXPOSE 80

CMD nginx -g 'daemon off;'
