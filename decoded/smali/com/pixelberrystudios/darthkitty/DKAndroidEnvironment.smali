.class public Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisplayHeight()I
    .locals 3

    .prologue
    .line 55
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 57
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisplayWidth()I
    .locals 3

    .prologue
    .line 62
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getDisplayXDpi()I
    .locals 3

    .prologue
    .line 73
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 75
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v0, v0

    return v0
.end method

.method public static getFacebookAppID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalRAMMemInfo()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 97
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "/proc/meminfo"

    const-string/jumbo v4, "r"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    array-length v0, v1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    .line 102
    const-string/jumbo v0, "MemTotal:"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 111
    const/16 v0, 0x400

    .line 112
    :try_start_2
    const-string/jumbo v6, "MB"

    const/4 v7, 0x2

    aget-object v1, v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/high16 v0, 0x100000

    .line 116
    :cond_0
    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 125
    :goto_0
    return-wide v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v0, v2

    .line 108
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 119
    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v0, v2

    .line 125
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static getTotalRam()J
    .locals 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 82
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 83
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 85
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 87
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->getTotalRAMMemInfo()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static isNetworkAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 132
    if-nez v0, :cond_0

    .line 137
    :goto_0
    return v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->b:Ljava/lang/String;

    .line 30
    return-void
.end method
