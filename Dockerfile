FROM denoland/deno:alpine

WORKDIR /code

COPY bin .

# For doc purpose only
# npm vite@latest
# Other > create-vite-extra > deno-svelte > Typescript

RUN deno task build

CMD ["deno", "task", "serve"]