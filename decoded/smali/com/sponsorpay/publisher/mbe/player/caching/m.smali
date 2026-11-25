.class public final Lcom/sponsorpay/publisher/mbe/player/caching/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/sponsorpay/publisher/mbe/player/caching/m;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/publisher/mbe/player/caching/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/m;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->d:Z

    .line 44
    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b:Ljava/io/File;

    .line 45
    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->c:Ljava/io/File;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1191
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "SPVideoCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1195
    const-string/jumbo v0, "SPCacheStore"

    const-string/jumbo v2, "The cache directory does not exist, creating..."

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string/jumbo v0, "SPCacheStore"

    const-string/jumbo v2, "Checking previous cache directory"

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2234
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1239
    if-eqz v0, :cond_4

    .line 3228
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1239
    :goto_0
    if-eqz v0, :cond_4

    .line 1240
    const-string/jumbo v0, "SPCacheStore"

    const-string/jumbo v2, "External write storage permission granted"

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1243
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 1244
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SPVideoCache"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    const-string/jumbo v0, "SPCacheStore"

    const-string/jumbo v2, "Application cache directory exists, deleting..."

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-static {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Ljava/io/File;)V

    .line 1248
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1251
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1253
    const-string/jumbo v0, "SPCacheStore"

    const-string/jumbo v2, "Cache directory empty, deleting..."

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1197
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_2
    iput-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SPCacheStorage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->c:Ljava/io/File;

    .line 52
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->d:Z

    .line 53
    return-void

    .line 3228
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1258
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "SPVideoCache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1260
    const-string/jumbo v2, "SPCacheStore"

    const-string/jumbo v3, "Internal cache directory exists, deleting..."

    invoke-static {v2, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Ljava/io/File;)V

    .line 1262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_0

    .line 220
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 221
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->f()V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    .line 4136
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->c:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4137
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4138
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    .line 4139
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 4140
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e()V

    .line 59
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_1
    return v0

    .line 4142
    :catch_0
    move-exception v0

    :goto_2
    const-string/jumbo v0, "SPCacheStore"

    const-string/jumbo v2, "Cache storage file was not found, purging the local files..."

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    .line 4149
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    move v0, v1

    .line 63
    goto :goto_1

    :cond_0
    move v0, v1

    .line 59
    goto :goto_1

    .line 4142
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    .line 69
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 70
    const-string/jumbo v1, "SPCacheStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Local file for cache entry "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a(I)V

    .line 72
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    if-eqz v1, :cond_1

    .line 76
    const-string/jumbo v0, "SPCacheStore"

    const-string/jumbo v1, "Saving Cache file."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->f()V

    .line 79
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private f()V
    .locals 3

    .prologue
    .line 121
    .line 5204
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->d:Z

    .line 121
    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 127
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string/jumbo v1, "SPCacheStore"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()Ljava/io/File;
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string/jumbo v1, "SPCacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Video already exists in cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->g()Ljava/io/File;

    move-result-object v0

    .line 160
    :cond_0
    const-string/jumbo v1, "SPCacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Save in file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sponsorpay/publisher/mbe/player/caching/q;)Lcom/sponsorpay/publisher/mbe/player/caching/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    .line 4204
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->d:Z

    .line 91
    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    .line 101
    :goto_0
    invoke-virtual {v0, p1}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a(Lcom/sponsorpay/publisher/mbe/player/caching/q;)Z

    .line 102
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->f()V

    .line 103
    return-object v0

    .line 95
    :cond_0
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 96
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/c;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/publisher/mbe/player/caching/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 166
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 167
    const-string/jumbo v0, "SPCacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Trimming cache to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->f()V

    .line 108
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 173
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    const-string/jumbo v0, "SPCacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Freeing up "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cache slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/n;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/n;-><init>(B)V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 176
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 178
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b(Ljava/lang/String;)Z

    .line 180
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 182
    :cond_0
    const-string/jumbo v0, "SPCacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Current cache size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->d:Z

    return v0
.end method
