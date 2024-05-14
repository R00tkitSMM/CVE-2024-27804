clang -arch arm64 -o vtdecode vtdecode.m -framework VideoToolbox -framework Foundation -framework CoreMedia  -framework CoreVideo -framework  AVFoundation
clang -dynamiclib -o flip.dylib flip.c -framework IOKit
