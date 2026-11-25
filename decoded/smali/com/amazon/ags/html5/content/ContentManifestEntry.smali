.class public Lcom/amazon/ags/html5/content/ContentManifestEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECKSUM_KEY:Ljava/lang/String; = "checksum"

.field private static final COMPATIBILITY_KEY:Ljava/lang/String; = "sdkVersionCompatibility"

.field private static final CONTENT_KEY:Ljava/lang/String; = "content"

.field private static final SEPARATOR:Ljava/lang/String; = ":::"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field private checksum:Ljava/lang/String;

.field private contentURL:Ljava/lang/String;

.field private contentVersion:Lcom/amazon/ags/html5/content/ContentVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/ags/html5/content/ContentManifestEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/content/ContentManifestEntry;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/content/ContentVersion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/ags/html5/content/ContentManifestEntry;->contentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    .line 35
    iput-object p2, p0, Lcom/amazon/ags/html5/content/ContentManifestEntry;->contentURL:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/amazon/ags/html5/content/ContentManifestEntry;->checksum:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static createManifestEntriesFromFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/html5/content/ContentManifestEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 52
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v4

    .line 121
    :cond_1
    :goto_0
    return-object v0

    .line 63
    :cond_2
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 68
    const-string/jumbo v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 69
    array-length v0, v10

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 78
    const/4 v0, 0x0

    move v9, v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    move-object v0, v6

    :goto_2
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    if-ge v9, v11, :cond_8

    .line 79
    const-string/jumbo v11, "version"

    aget-object v12, v10, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 80
    add-int/lit8 v11, v9, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 81
    add-int/lit8 v3, v9, 0x1

    aget-object v3, v10, v3

    invoke-static {v3}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->parseContentVersion(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v3

    .line 78
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 83
    :cond_5
    const-string/jumbo v11, "content"

    aget-object v12, v10, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 84
    add-int/lit8 v11, v9, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 85
    add-int/lit8 v2, v9, 0x1

    aget-object v2, v10, v2

    goto :goto_3

    .line 87
    :cond_6
    const-string/jumbo v11, "sdkVersionCompatibility"

    aget-object v12, v10, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 88
    add-int/lit8 v11, v9, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 89
    add-int/lit8 v1, v9, 0x1

    aget-object v1, v10, v1

    invoke-static {v1}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->parseCompatibilityVersion(Ljava/lang/String;)Lcom/amazon/ags/VersionInfo;

    move-result-object v1

    goto :goto_3

    .line 91
    :cond_7
    const-string/jumbo v11, "checksum"

    aget-object v12, v10, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 92
    add-int/lit8 v11, v9, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 93
    add-int/lit8 v0, v9, 0x1

    aget-object v0, v10, v0

    goto :goto_3

    .line 98
    :cond_8
    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {v1}, Lcom/amazon/ags/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/amazon/ags/html5/content/ContentManifestEntry;

    invoke-direct {v9, v3, v2, v0}, Lcom/amazon/ags/html5/content/ContentManifestEntry;-><init>(Lcom/amazon/ags/html5/content/ContentVersion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_1

    .line 102
    :catch_0
    move-exception v0

    move-object v1, v5

    move-object v6, v7

    move-object v2, v8

    .line 103
    :goto_4
    :try_start_4
    sget-object v3, Lcom/amazon/ags/html5/content/ContentManifestEntry;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error encountered while performing manifest read operation"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 107
    if-eqz v1, :cond_9

    .line 108
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 110
    :cond_9
    if-eqz v6, :cond_a

    .line 111
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 113
    :cond_a
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v1

    .line 117
    sget-object v2, Lcom/amazon/ags/html5/content/ContentManifestEntry;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up manifest read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 107
    :cond_b
    if-eqz v5, :cond_c

    .line 108
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 110
    :cond_c
    if-eqz v7, :cond_d

    .line 111
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 113
    :cond_d
    if-eqz v8, :cond_e

    .line 114
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_e
    :goto_5
    move-object v0, v4

    .line 121
    goto/16 :goto_0

    .line 116
    :catch_2
    move-exception v0

    .line 117
    sget-object v1, Lcom/amazon/ags/html5/content/ContentManifestEntry;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error encountered while cleaning up manifest read operation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 106
    :catchall_0
    move-exception v0

    move-object v5, v6

    move-object v7, v6

    move-object v8, v6

    .line 107
    :goto_6
    if-eqz v5, :cond_f

    .line 108
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 110
    :cond_f
    if-eqz v7, :cond_10

    .line 111
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 113
    :cond_10
    if-eqz v8, :cond_11

    .line 114
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 118
    :cond_11
    :goto_7
    throw v0

    .line 116
    :catch_3
    move-exception v1

    .line 117
    sget-object v2, Lcom/amazon/ags/html5/content/ContentManifestEntry;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up manifest read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 106
    :catchall_1
    move-exception v0

    move-object v5, v6

    move-object v7, v6

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v5, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v5, v1

    move-object v7, v6

    move-object v8, v2

    goto :goto_6

    .line 102
    :catch_4
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v6

    move-object v2, v8

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v6

    move-object v2, v8

    move-object v6, v7

    goto :goto_4
.end method

.method private static parseCompatibilityVersion(Ljava/lang/String;)Lcom/amazon/ags/VersionInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 141
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 142
    array-length v1, v3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 153
    :goto_0
    return-object v0

    .line 145
    :cond_0
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 147
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :catch_0
    move-exception v1

    .line 149
    sget-object v2, Lcom/amazon/ags/html5/content/ContentManifestEntry;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception encountered while parsing compatibility version number"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Lcom/amazon/ags/VersionInfo;

    aget-object v1, v3, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ags/VersionInfo;-><init>(III)V

    goto :goto_0
.end method

.method private static parseContentVersion(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 125
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    array-length v1, v3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 137
    :goto_0
    return-object v0

    .line 129
    :cond_0
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 131
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :catch_0
    move-exception v1

    .line 133
    sget-object v2, Lcom/amazon/ags/html5/content/ContentManifestEntry;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception encountered while parsing content version number"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Lcom/amazon/ags/html5/content/ContentVersion;

    aget-object v1, v3, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ags/html5/content/ContentVersion;-><init>(III)V

    goto :goto_0
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManifestEntry;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManifestEntry;->contentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManifestEntry;->contentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    return-object v0
.end method
