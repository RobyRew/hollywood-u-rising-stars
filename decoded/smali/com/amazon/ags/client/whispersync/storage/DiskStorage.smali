.class public Lcom/amazon/ags/client/whispersync/storage/DiskStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/storage/LocalStorage;


# static fields
.field public static final AMAZON_GAMES_DIR_NAME:Ljava/lang/String; = ".amazonGamesService"

.field private static final BACKUP_FILE_EXTENSION:Ljava/lang/String; = ".bak"

.field private static final GAME_DATA_FILE:Ljava/lang/String; = "gameData.json"

.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"

.field private static final VERSION_INFO_FILE:Ljava/lang/String; = "latestVersion.txt"


# instance fields
.field private final context:Landroid/content/Context;

.field private hasSuccessfullySynchronized:Z

.field private final marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

.field private stringObfuscator:Lcom/amazon/ags/storage/StringObfuscator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;Lcom/amazon/ags/storage/StringObfuscator;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

    .line 38
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->stringObfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    .line 39
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->init()V

    .line 40
    return-void
.end method

.method private getAmazonGamesDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".amazonGamesService"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 183
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "latestVersion.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->hasSuccessfullySynchronized:Z

    .line 45
    return-void
.end method

.method private declared-synchronized readFromAmazonGamesDir(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    const-string/jumbo v4, "GC_Whispersync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found backup file ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "]. This indicates that saving to ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "] previously failed."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 116
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t rename backup file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] to file ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 122
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v1, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 129
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private declared-synchronized writeToAmazonGamesDir(Ljava/lang/String;[B)V
    .locals 6

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t rename file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] to backup file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    const-string/jumbo v3, "GC_Whispersync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found backup file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]. This indicates that saving to ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] previously failed."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2, p2}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->writeDataToFile(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 164
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public getVersionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "latestVersion.txt"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public hasSuccessfullySynchronized()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->hasSuccessfullySynchronized:Z

    return v0
.end method

.method public putVersionId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->hasSuccessfullySynchronized:Z

    .line 60
    const-string/jumbo v0, "latestVersion.txt"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    .line 61
    return-void
.end method

.method public retrieve()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;
    .locals 4

    .prologue
    .line 83
    const-string/jumbo v0, "gameData.json"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Retrieved an empty document from disk"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 89
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->stringObfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    invoke-interface {v0, v1}, Lcom/amazon/ags/storage/StringObfuscator;->unobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Retrieved JSON string ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] of game data map from disk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;->parse(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v0

    goto :goto_0
.end method

.method public save(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;)I
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

    invoke-interface {v0, p1}, Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;->composeForDisk(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Writing game data to disk: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->stringObfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    invoke-interface {v1, v0}, Lcom/amazon/ags/storage/StringObfuscator;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v1, "gameData.json"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    :goto_0
    return v0

    .line 76
    :cond_0
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "No game data to write to disk yet"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStringObfuscator(Lcom/amazon/ags/storage/StringObfuscator;)V
    .locals 0

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->stringObfuscator:Lcom/amazon/ags/storage/StringObfuscator;

    .line 105
    :cond_0
    return-void
.end method

.method protected writeDataToFile(Ljava/io/File;[B)V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 173
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method
