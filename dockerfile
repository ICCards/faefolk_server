FROM chybby/godot-ci:4.0.2

RUN wget https://downloads.tuxfamily.org/godotengine/4.0.2/Godot_v4.0.2-stable_linux.x86_64.zip && \
    unzip Godot_v4.0.2-stable_linux.x86_64.zip && \
    mv ./Godot_v4.0.2-stable_linux.x86_64 /opt/godot-server

WORKDIR /game

COPY . ./src
RUN godot --path ./src --export-pack Linux /game/game.pck --headless && rm -r ./src

EXPOSE 65124
CMD [ "/opt/godot-server", "--main-pack", "/game/game.pck", "--headless" ]