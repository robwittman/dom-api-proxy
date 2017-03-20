FROM php
RUN echo "<?php echo 'Hello World '; echo gethostname();" > /tmp/index.php
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80", "-t", "/tmp"]
