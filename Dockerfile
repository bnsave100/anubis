FROM heroku/heroku:18
RUN wget -O- https://github.com/jpillora/chisel/releases/download/v1.4.0/chisel_1.4.0_linux_amd64.gz | gzip -d - > /bin/chisel
RUN chmod +x /bin/chisel
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD chisel server --auth $CHISEL_AUTH --socks5 --reverse
