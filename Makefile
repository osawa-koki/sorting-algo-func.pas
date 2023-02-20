# コンパイルするファイル
SOURCE_FILES = \
    ./src/Display.pas \
    ./src/Output.pas \
    ./src/Swap.pas \
    ./src/ToNoSQL.pas \
    ./src/Main.pas

# 出力先のバイナリファイル
OUTPUT_FILE = bin/main

# デフォルトのターゲット：バイナリファイルをコンパイルする
all: $(OUTPUT_FILE)

# バイナリファイルをコンパイルするルール
$(OUTPUT_FILE): $(SOURCE_FILES)
	fpc -o$(OUTPUT_FILE) $^

# バイナリファイルを実行するルール
run: $(OUTPUT_FILE)
	./$(OUTPUT_FILE)

# ビルドをクリーンするルール
clean:
	find bin/ -type f -not -name '.gitkeep' -delete
