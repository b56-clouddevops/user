FROM        node:18
RUN         useradd roboshop   
WORKDIR     /home/roboshop 
# run npm install and get the nodeModules here 
COPY        node_modules/   node_modules/
COPY        server.js .
COPY        package.json .
# Ensure you Jenkins job downloads the  global-bundle.pe before docker build command
COPY        global-bundle.pem /home/roboshop/global-bundle.pem
ENTRYPOINT [ "node" , "server.js"]


# Catalogue talks to DocuementDB and authentication needs to have a pemFile that will be downloaded just before the docker build command on Jenkins Job 