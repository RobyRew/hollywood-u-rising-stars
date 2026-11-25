.class public Lcom/amazon/ags/html5/content/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTES_PER_KILOBYTE:I = 0x400

.field private static final DOWNLOAD_BUFFER_SIZE_BYTES:I = 0x2000

.field private static final DOWNLOAD_CONNECTION_TIMEOUT_MS:I = 0x7d0

.field private static final DOWNLOAD_READ_TIMEOUT_MS:I = 0x7d0

.field private static final MAX_DOWNLOAD_TIME_MS:I = 0x1388

.field private static final PARTIAL_DOWNLOAD_FILENAME_MODIFIER:Ljava/lang/String; = ".part"

.field private static final TAG:Ljava/lang/String;

.field private static final ZIP_BUFFER_SIZE:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/content/FileUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static declared-synchronized copyResourceContentIntoDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 64
    const-class v5, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v5

    const/4 v1, 0x1

    .line 66
    const/4 v4, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    const-string/jumbo v6, "raw"

    invoke-static {p0, v6, p1}, Lcom/amazon/ags/html5/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 73
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v6

    if-nez v6, :cond_2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_0
    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :cond_1
    :goto_0
    monitor-exit v5

    return v0

    .line 97
    :catch_0
    move-exception v1

    .line 99
    :try_start_3
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "An error occurred while cleaning up resource copy operation for resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 77
    :cond_2
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    const/16 v3, 0x400

    :try_start_5
    new-array v3, v3, [B

    .line 82
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 83
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 85
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 87
    :goto_2
    :try_start_6
    sget-object v4, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "An error occurred while attempting to access resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_3
    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 97
    :catch_2
    move-exception v1

    .line 99
    :try_start_8
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "An error occurred while cleaning up resource copy operation for resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 90
    :cond_4
    if-eqz v2, :cond_5

    .line 91
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_5
    if-eqz v4, :cond_6

    .line 94
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    move v0, v1

    .line 100
    goto/16 :goto_0

    .line 97
    :catch_3
    move-exception v1

    .line 99
    :try_start_a
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "An error occurred while cleaning up resource copy operation for resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 89
    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 90
    :goto_3
    if-eqz v2, :cond_7

    .line 91
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_7
    if-eqz v3, :cond_8

    .line 94
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 100
    :cond_8
    :goto_4
    :try_start_c
    throw v0

    .line 97
    :catch_4
    move-exception v1

    .line 99
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "An error occurred while cleaning up resource copy operation for resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    .line 89
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_3

    .line 85
    :catch_5
    move-exception v1

    move-object v2, v3

    goto/16 :goto_2

    :catch_6
    move-exception v1

    goto/16 :goto_2
.end method

.method public static declared-synchronized deleteDirectory(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    const-class v2, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v2

    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/io/File;->setWritable(Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 121
    invoke-static {v5}, Lcom/amazon/ags/html5/content/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_4

    .line 126
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/File;->setWritable(Z)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v1

    .line 127
    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v1

    .line 131
    goto :goto_0

    .line 119
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized downloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 18

    .prologue
    .line 221
    const-class v7, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v7

    const/4 v6, 0x0

    .line 223
    const/4 v3, 0x0

    .line 224
    const/4 v4, 0x0

    .line 227
    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 229
    const/16 v8, 0x7d0

    invoke-virtual {v5, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 230
    const/16 v8, 0x7d0

    invoke-virtual {v5, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 231
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 232
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 234
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v8, 0x2000

    invoke-direct {v5, v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ".part"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 239
    const/16 v4, 0x400

    :try_start_2
    new-array v4, v4, [B

    .line 240
    const-wide/16 v8, 0x0

    .line 243
    sget-object v10, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Beginning download of %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 245
    :cond_0
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 246
    int-to-long v14, v12

    add-long/2addr v8, v14

    .line 247
    const/4 v13, 0x0

    invoke-virtual {v3, v4, v13, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    cmp-long v12, v12, p2

    if-ltz v12, :cond_0

    .line 249
    sget-object v4, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Maximum time to download file exceeded.  Aborting download."

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_8

    .line 255
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v4

    .line 262
    :goto_0
    if-eqz v3, :cond_2

    .line 263
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 264
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 266
    :cond_2
    if-eqz v5, :cond_3

    .line 267
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    move v2, v4

    .line 274
    :goto_1
    :try_start_4
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Download of %s was successful: %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    monitor-exit v7

    return v2

    .line 269
    :catch_0
    move-exception v2

    .line 270
    :try_start_5
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error encountered during post-download cleanup"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v2, v4

    .line 272
    goto :goto_1

    .line 258
    :catch_1
    move-exception v2

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 259
    :goto_2
    :try_start_6
    sget-object v5, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error encountered while trying to download file"

    invoke-static {v5, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 262
    if-eqz v3, :cond_4

    .line 263
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 264
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 266
    :cond_4
    if-eqz v4, :cond_5

    .line 267
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    move v2, v6

    .line 271
    goto :goto_1

    .line 269
    :catch_2
    move-exception v2

    .line 270
    :try_start_8
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error encountered during post-download cleanup"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v2, v6

    .line 272
    goto :goto_1

    .line 261
    :catchall_0
    move-exception v2

    move-object v5, v3

    move-object v3, v4

    .line 262
    :goto_3
    if-eqz v3, :cond_6

    .line 263
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 264
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 266
    :cond_6
    if-eqz v5, :cond_7

    .line 267
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 271
    :cond_7
    :goto_4
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 221
    :catchall_1
    move-exception v2

    monitor-exit v7

    throw v2

    .line 269
    :catch_3
    move-exception v3

    .line 270
    :try_start_b
    sget-object v4, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error encountered during post-download cleanup"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 261
    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_3

    :catchall_3
    move-exception v2

    goto :goto_3

    :catchall_4
    move-exception v2

    move-object v5, v4

    goto :goto_3

    .line 258
    :catch_4
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v4, v5

    goto :goto_2

    :cond_8
    move v4, v6

    goto/16 :goto_0
.end method

.method public static declared-synchronized ensureDirectoryExists(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    const-class v2, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized extractZipToDirectory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 158
    const-class v6, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    monitor-exit v6

    return v1

    .line 164
    :cond_0
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipFile;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    const/4 v2, 0x1

    .line 172
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 173
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 175
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 176
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 178
    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->ensureDirectoryExists(Ljava/io/File;)Z

    .line 180
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 185
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    const/16 v0, 0x800

    :try_start_4
    new-array v0, v0, [B

    .line 189
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 190
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x800

    invoke-direct {v3, v10, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 192
    :goto_2
    const/4 v9, 0x0

    const/16 v10, 0x800

    :try_start_5
    invoke-virtual {v5, v0, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    .line 193
    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 195
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    .line 197
    :goto_3
    :try_start_6
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "An error occurred while performing zip extraction operation"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 201
    if-eqz v2, :cond_2

    .line 202
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 203
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 205
    :cond_2
    if-eqz v4, :cond_3

    .line 206
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    move v0, v1

    :goto_4
    move v1, v0

    .line 217
    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    :try_start_8
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to extract zip file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 201
    :cond_4
    if-eqz v3, :cond_5

    .line 202
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 203
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 205
    :cond_5
    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 208
    :catch_2
    move-exception v0

    .line 210
    :try_start_a
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "An error occurred while cleaning up zip extraction operation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 211
    goto :goto_4

    .line 208
    :catch_3
    move-exception v0

    .line 210
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "An error occurred while cleaning up zip extraction operation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v0, v1

    .line 211
    goto :goto_4

    .line 200
    :catchall_1
    move-exception v0

    move-object v5, v4

    .line 201
    :goto_5
    if-eqz v4, :cond_6

    .line 202
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 203
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 205
    :cond_6
    if-eqz v5, :cond_7

    .line 206
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 211
    :cond_7
    :try_start_c
    throw v0

    .line 208
    :catch_4
    move-exception v0

    .line 210
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "An error occurred while cleaning up zip extraction operation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v0, v1

    .line 211
    goto :goto_4

    .line 200
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    goto :goto_5

    .line 195
    :catch_5
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v2, v4

    move-object v4, v5

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method public static declared-synchronized getDirectorySize(Ljava/io/File;)J
    .locals 11

    .prologue
    .line 349
    const-class v4, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v4

    const-wide/16 v2, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v3, v5, v2

    .line 351
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 352
    invoke-static {v3}, Lcom/amazon/ags/html5/content/FileUtils;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 350
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_1

    .line 357
    :cond_1
    monitor-exit v4

    return-wide v0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static declared-synchronized getMD5ChecksumForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 313
    const-class v2, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v2

    .line 314
    :try_start_0
    invoke-static {p0}, Lcom/amazon/ags/html5/content/FileUtils;->readFileBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 315
    if-nez v1, :cond_0

    .line 345
    :goto_0
    monitor-exit v2

    return-object v0

    .line 319
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 322
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 323
    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 324
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 325
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    if-eqz v4, :cond_2

    .line 328
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v5, v1, 0x20

    .line 329
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 330
    const/16 v6, 0x30

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 332
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 340
    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    .line 341
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid checksum calculated.  Discarding result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    :try_start_4
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error encountered during checksum calculation"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 337
    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized readFileBytes(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 279
    const-class v4, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v4

    .line 280
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 309
    :cond_1
    :goto_0
    monitor-exit v4

    return-object v0

    .line 287
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    .line 289
    new-array v0, v5, [B

    .line 291
    const/4 v3, 0x0

    .line 292
    :goto_1
    if-ge v3, v5, :cond_3

    .line 293
    sub-int v6, v5, v3

    invoke-virtual {v2, v0, v3, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    .line 294
    add-int/2addr v3, v6

    .line 295
    goto :goto_1

    .line 300
    :cond_3
    if-eqz v2, :cond_1

    .line 302
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    :try_start_4
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered during post file-to-byte conversion cleanup"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 296
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 297
    :goto_2
    :try_start_5
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error encountered when decoding file to bytes"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 300
    if-eqz v2, :cond_5

    .line 302
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 305
    goto :goto_0

    .line 303
    :catch_2
    move-exception v0

    .line 304
    :try_start_7
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered during post file-to-byte conversion cleanup"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v1

    .line 305
    goto :goto_0

    .line 300
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 302
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 305
    :cond_4
    :goto_4
    :try_start_9
    throw v0

    .line 303
    :catch_3
    move-exception v1

    .line 304
    sget-object v2, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered during post file-to-byte conversion cleanup"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 300
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 296
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized renameDirectory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 142
    const-class v1, Lcom/amazon/ags/html5/content/FileUtils;

    monitor-enter v1

    const/4 v0, 0x0

    .line 144
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 153
    :goto_0
    monitor-exit v1

    return v0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    :try_start_2
    sget-object v3, Lcom/amazon/ags/html5/content/FileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error occurred while trying to rename directory ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") to ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
