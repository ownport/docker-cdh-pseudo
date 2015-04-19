## Footer ------------------------------------------------

# export auto configuration script
RUN /deploy/docker-cdh-pseudo-master/rerun config:init --export-to /configs/

# clean temporary files after installation
RUN /deploy/docker-cdh-pseudo-master/rerun misc:clean

# Run auto configuration
CMD ["/configs/rerun", "rc0:config-init", "--run"]

