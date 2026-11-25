.class final Lcom/leanplum/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/leanplum/Var;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/leanplum/Var",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Object;

.field private static c:Lcom/leanplum/cz;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/leanplum/g;->a:Lcom/leanplum/Var;

    .line 41
    sput-boolean v1, Lcom/leanplum/g;->d:Z

    .line 42
    sput-boolean v1, Lcom/leanplum/g;->e:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/leanplum/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/leanplum/FileManager$DownloadFileResult;
    .locals 2

    .prologue
    .line 64
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/leanplum/cg;->c(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 68
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/leanplum/FileManager$DownloadFileResult;->EXISTS_IN_ASSETS:Lcom/leanplum/FileManager$DownloadFileResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 74
    :cond_1
    invoke-static {p1}, Lcom/leanplum/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-static {p1}, Lcom/leanplum/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    const-string/jumbo v0, "downloadFile"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leanplum/y;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/leanplum/cv;

    invoke-direct {v1, p3}, Lcom/leanplum/cv;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bi;)V

    .line 87
    new-instance v1, Lcom/leanplum/cw;

    invoke-direct {v1, p3}, Lcom/leanplum/cw;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bg;)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/leanplum/y;->d(Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/leanplum/FileManager$DownloadFileResult;->DOWNLOADING:Lcom/leanplum/FileManager$DownloadFileResult;

    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/leanplum/FileManager$DownloadFileResult;->NONE:Lcom/leanplum/FileManager$DownloadFileResult;

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/leanplum/cy;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 109
    :try_start_1
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p0, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/16 v3, 0x2000

    :try_start_2
    new-array v5, v3, [B

    move v3, v0

    .line 112
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 113
    add-int/2addr v3, v6

    goto :goto_0

    .line 117
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 119
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 121
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 123
    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 125
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v1

    .line 135
    :goto_3
    return-object v0

    .line 129
    :cond_2
    :try_start_4
    new-instance v0, Lcom/leanplum/cy;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/leanplum/cy;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 133
    :catch_1
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 135
    goto :goto_3

    .line 117
    :catchall_1
    move-exception v0

    move-object p0, v2

    goto :goto_2
.end method

.method static a(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    if-eqz p3, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 409
    :goto_0
    return-object v0

    .line 393
    :cond_1
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Error loading stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 409
    goto :goto_0

    .line 396
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 397
    if-nez p2, :cond_3

    .line 399
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 404
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    .line 406
    :cond_5
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p1}, Lcom/leanplum/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 384
    :goto_0
    return-object p0

    .line 357
    :cond_0
    if-nez p2, :cond_2

    .line 359
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 368
    :cond_1
    invoke-static {p0}, Lcom/leanplum/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 370
    invoke-static {p0}, Lcom/leanplum/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 372
    invoke-static {p0}, Lcom/leanplum/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 374
    invoke-static {p1}, Lcom/leanplum/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 376
    invoke-static {p1}, Lcom/leanplum/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/leanplum/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object p0, p1

    .line 378
    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 384
    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    if-nez p0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    :goto_0
    return-object v0

    .line 304
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    :try_start_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Ignoring malformed resource syncing pattern: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\". Patterns must be regular expressions."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 313
    goto :goto_0
.end method

.method public static a(Lcom/leanplum/cz;)V
    .locals 0

    .prologue
    .line 202
    sput-object p0, Lcom/leanplum/g;->c:Lcom/leanplum/cz;

    .line 203
    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/leanplum/g;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/g;->e:Z

    .line 319
    sget-boolean v0, Lcom/leanplum/g;->d:Z

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 324
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/leanplum/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-static {p1}, Lcom/leanplum/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 327
    if-eqz p2, :cond_1

    .line 328
    new-instance v2, Lcom/leanplum/cx;

    invoke-direct {v2, v0, v1}, Lcom/leanplum/cx;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v0}, Lcom/leanplum/x;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 340
    :cond_1
    :try_start_1
    invoke-static {v0, v1}, Lcom/leanplum/g;->b(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lcom/leanplum/g;->e:Z

    return v0
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 188
    if-nez p1, :cond_0

    move v0, v4

    .line 198
    :goto_0
    return v0

    .line 191
    :cond_0
    const-string/jumbo v0, "hash"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    const-string/jumbo v1, "hash"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    const-string/jumbo v2, "size"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 194
    const-string/jumbo v3, "size"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 195
    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v4

    .line 196
    goto :goto_0

    .line 198
    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 1148
    :cond_0
    const-string/jumbo v0, ""

    .line 174
    invoke-static {v0, p0}, Lcom/leanplum/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    const-string/jumbo v0, "__Android Resources"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/leanplum/Var;->define(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/Var;

    move-result-object v0

    sput-object v0, Lcom/leanplum/g;->a:Lcom/leanplum/Var;

    .line 222
    const-string/jumbo v5, "res/drawable"

    .line 223
    const-string/jumbo v6, "res/layout"

    .line 224
    const/4 v2, 0x0

    .line 225
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 230
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 231
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 235
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 239
    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 244
    :goto_1
    if-eqz v0, :cond_0

    .line 248
    :cond_3
    if-eqz p1, :cond_5

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 251
    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    .line 256
    :goto_2
    if-nez v0, :cond_0

    .line 261
    :cond_5
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    const/16 v0, 0x2000

    new-array v10, v0, [B

    move v0, v3

    .line 266
    :goto_3
    invoke-virtual {v1, v10}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 267
    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 268
    add-int/2addr v0, v11

    goto :goto_3

    .line 270
    :cond_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "__Android Resources."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "."

    const-string/jumbo v12, "\\."

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x2f

    const/16 v12, 0x2e

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v8, v7, v0, v2, v9}, Lcom/leanplum/Var;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lcom/leanplum/Var;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    :goto_4
    :try_start_2
    const-string/jumbo v2, "tag"

    const-string/jumbo v3, "Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    if-eqz v1, :cond_7

    .line 285
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 291
    :cond_7
    :goto_5
    sput-boolean v4, Lcom/leanplum/g;->d:Z

    .line 292
    sget-object v1, Lcom/leanplum/g;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/leanplum/g;->e:Z

    .line 294
    sget-object v0, Lcom/leanplum/g;->c:Lcom/leanplum/cz;

    if-eqz v0, :cond_8

    .line 295
    sget-object v0, Lcom/leanplum/g;->c:Lcom/leanplum/cz;

    invoke-virtual {v0}, Lcom/leanplum/cz;->a()V

    .line 297
    :cond_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 285
    :cond_9
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 286
    :catch_1
    move-exception v0

    .line 287
    const-string/jumbo v1, "tag"

    const-string/jumbo v2, "Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 286
    :catch_2
    move-exception v0

    .line 287
    const-string/jumbo v1, "tag"

    const-string/jumbo v2, "Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 283
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_a

    .line 285
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 288
    :cond_a
    :goto_7
    throw v0

    .line 286
    :catch_3
    move-exception v1

    .line 287
    const-string/jumbo v2, "tag"

    const-string/jumbo v3, "Error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 297
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 283
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 280
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_b
    move v0, v3

    goto/16 :goto_2

    :cond_c
    move v0, v3

    goto/16 :goto_1
.end method

.method static b()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/leanplum/g;->e:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/leanplum/g;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2152
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2153
    const-string/jumbo v1, "Leanplum_Documents"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0, p0}, Lcom/leanplum/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1162
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1163
    const-string/jumbo v1, "Leanplum_Bundle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0, p0}, Lcom/leanplum/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
