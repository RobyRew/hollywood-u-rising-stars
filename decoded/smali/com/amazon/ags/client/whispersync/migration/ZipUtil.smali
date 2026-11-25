.class public Lcom/amazon/ags/client/whispersync/migration/ZipUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KIBI:I = 0x400

.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field private zipInputStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNextEntry(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Ignoring EOFException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private unzipFile(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 90
    const/4 v2, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    throw v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 104
    :cond_2
    return-void

    .line 99
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "destinationDir cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entering unzip() with destination directory ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    .line 49
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->getNextEntry(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_2
    throw v0

    .line 57
    :cond_3
    :try_start_1
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0, v1}, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->unzipFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 67
    :cond_5
    return-void
.end method

.method public final unzip([BLjava/io/File;)V
    .locals 2

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/amazon/ags/client/whispersync/migration/ZipUtil;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 34
    return-void
.end method
