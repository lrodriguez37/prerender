FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install -y \ 
    fonts-liberation  \
    gconf-service  \
    libappindicator1 \ 
    libasound2  \
    libatk1.0-0 \
    libcairo2 \
    libcups2 \
    libfontconfig1 \ 
    libgbm-dev  \
    libgdk-pixbuf2.0-0 \ 
    libgtk-3-0 \ 
    libicu-dev \ 
    libjpeg-dev \ 
    libnspr4 \ 
    libnss3 \ 
    libpango-1.0-0 \ 
    libpangocairo-1.0-0 \ 
    libpng-dev \
    libx11-6 \
    libx11-xcb1 \ 
    libxcb1 \ 
    libxcomposite1 \ 
    libxcursor1 \
    libxdamage1 \ 
    libxext6 \ 
    libxfixes3 \
    libxi6 \
    libxrandr2 \ 
    libxrender1 \ 
    libxss1 \ 
    libxtst6 \ 
    libcurl3-gnutls \
    libcurl3-nss \
    libcurl4 \
    xdg-utils \
    wget \
    nodejs \
    npm \
    curl \
    git

RUN npm install -g n
RUN n stable

# Chrome instalation
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install -y ./google-chrome-stable_current_amd64.deb
RUN rm google-chrome-stable_current_amd64.deb

# Check chrome version
RUN echo "Chrome: " && google-chrome --version


