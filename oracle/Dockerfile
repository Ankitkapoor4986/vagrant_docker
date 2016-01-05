FROM wnameless/oracle-xe-11g
ADD scripts data/scripts
ENV ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
ENV ORACLE_SID XE
ENV PATH $ORACLE_HOME/bin:$PATH
RUN  chmod +x data/scripts/prepare-db.sh && /usr/sbin/startup.sh & sleep 40 &&  /data/scripts/prepare-db.sh
