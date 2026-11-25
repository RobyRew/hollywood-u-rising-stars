.class Lcom/crashlytics/android/ndk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/ndk/f;


# instance fields
.field private final a:Lcom/crashlytics/android/ndk/e;

.field private final b:Lcom/crashlytics/android/ndk/a;

.field private final c:Lcom/crashlytics/android/ndk/d;

.field private d:Lcom/crashlytics/android/c/a/a/d;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/ndk/e;Lcom/crashlytics/android/ndk/a;Lcom/crashlytics/android/ndk/d;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/crashlytics/android/ndk/g;->a:Lcom/crashlytics/android/ndk/e;

    .line 35
    iput-object p2, p0, Lcom/crashlytics/android/ndk/g;->b:Lcom/crashlytics/android/ndk/a;

    .line 36
    iput-object p3, p0, Lcom/crashlytics/android/ndk/g;->c:Lcom/crashlytics/android/ndk/d;

    .line 37
    return-void
.end method

.method public static a(Lcom/crashlytics/android/ndk/b;)Lcom/crashlytics/android/ndk/f;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/crashlytics/android/ndk/JniNativeApi;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/JniNativeApi;-><init>()V

    .line 20
    new-instance v1, Lb/a/a/a/a/f/b;

    invoke-direct {v1, p0}, Lb/a/a/a/a/f/b;-><init>(Lb/a/a/a/q;)V

    .line 21
    new-instance v2, Lcom/crashlytics/android/ndk/k;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/ndk/k;-><init>(Lb/a/a/a/a/f/a;)V

    .line 22
    new-instance v1, Lcom/crashlytics/android/ndk/d;

    invoke-direct {v1}, Lcom/crashlytics/android/ndk/d;-><init>()V

    .line 23
    new-instance v3, Lcom/crashlytics/android/ndk/g;

    invoke-direct {v3, v0, v2, v1}, Lcom/crashlytics/android/ndk/g;-><init>(Lcom/crashlytics/android/ndk/e;Lcom/crashlytics/android/ndk/a;Lcom/crashlytics/android/ndk/d;)V

    return-object v3
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 93
    .line 94
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsNdk"

    const-string/jumbo v3, "Reading NDK crash data..."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    invoke-static {v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 103
    const-string/jumbo v1, "Error closing crash data file."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 101
    :goto_1
    :try_start_2
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsNdk"

    const-string/jumbo v5, "Failed to read NDK crash data."

    invoke-interface {v3, v4, v5, v1}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    const-string/jumbo v1, "Error closing crash data file."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string/jumbo v1, "Error closing crash data file."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 100
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/crashlytics/android/ndk/g;->b:Lcom/crashlytics/android/ndk/a;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/a;->b()Ljava/io/File;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsNdk"

    const-string/jumbo v3, "Found NDK crash file..."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/ndk/g;->c:Lcom/crashlytics/android/ndk/d;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/ndk/d;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/ndk/g;->d:Lcom/crashlytics/android/c/a/a/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsNdk"

    const-string/jumbo v2, "Crashlytics failed to parse prior crash data."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/ndk/g;->b:Lcom/crashlytics/android/ndk/a;

    invoke-interface {v1}, Lcom/crashlytics/android/ndk/a;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/crashlytics/android/ndk/g;->a:Lcom/crashlytics/android/ndk/e;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/crashlytics/android/ndk/e;->a(Ljava/lang/String;Landroid/content/res/AssetManager;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 49
    :goto_0
    return v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsNdk"

    const-string/jumbo v4, "Error initializing CrashlyticsNdk"

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Lcom/crashlytics/android/c/a/a/d;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/crashlytics/android/ndk/g;->d:Lcom/crashlytics/android/c/a/a/d;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/crashlytics/android/ndk/g;->b:Lcom/crashlytics/android/ndk/a;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/a;->c()V

    .line 81
    return-void
.end method
