FROM rockitthill/ruby27multi-node18

# Set up directory structure
RUN mkdir /app
WORKDIR /app

RUN apt-get update -qq \
&& apt-get -y --no-install-recommends install tzdata libmariadb-dev \
  imagemagick libjemalloc2 apt-transport-https apt-utils

# Jemalloc config
ENV LD_PRELOAD="libjemalloc.so.2"
ENV MALLOC_CONF="background_thread:true,metadata_thp:auto"
# ,dirty_decay_ms:5000,muzzy_decay_ms:5000

# Bundler config
RUN bundle config set --global path '/bundle'
ENV PATH="/app/bin:/bundle/ruby/2.7.8/bin:/bundle/ruby/2.7.0/bin:${PATH}"

# Ensure binding is always 0.0.0.0 to access the server outside the container
ENV BINDING="0.0.0.0"
ENV PORT="3000"

# Expose the Rails port
EXPOSE 3000
