.class public Lcom/amazon/ags/html5/content/ContentVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/amazon/ags/html5/content/ContentVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_FILENAME:Ljava/lang/String; = "version.txt"

.field private static final majorKey:Ljava/lang/String; = "major"

.field private static final minorKey:Ljava/lang/String; = "minor"

.field private static final patchKey:Ljava/lang/String; = "patch"

.field private static final separator:Ljava/lang/String; = "::"

.field private static final versionKey:Ljava/lang/String; = "version"


# instance fields
.field private majorVersion:Ljava/lang/Integer;

.field private minorVersion:Ljava/lang/Integer;

.field private patchVersion:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->majorVersion:Ljava/lang/Integer;

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->minorVersion:Ljava/lang/Integer;

    .line 43
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->patchVersion:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input json must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "major"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ags/html5/content/ContentVersion;->majorVersion:Ljava/lang/Integer;

    .line 59
    const-string/jumbo v1, "minor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ags/html5/content/ContentVersion;->minorVersion:Ljava/lang/Integer;

    .line 60
    const-string/jumbo v1, "patch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->patchVersion:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v1, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to parse version JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->majorVersion:Ljava/lang/Integer;

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->minorVersion:Ljava/lang/Integer;

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->patchVersion:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static createVersionFromDefaultContentRawResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 166
    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    invoke-static {p0, p1, p2}, Lcom/amazon/ags/html5/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 170
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 171
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "version.txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 179
    :cond_0
    if-eqz v2, :cond_3

    .line 180
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    .line 181
    new-array v0, v0, [B

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 183
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 184
    invoke-static {v2}, Lcom/amazon/ags/html5/content/ContentVersion;->parseContentVersion(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 190
    if-eqz v1, :cond_1

    .line 191
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    :cond_1
    :goto_1
    return-object v0

    .line 173
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up version file read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 190
    :cond_3
    if-eqz v1, :cond_4

    .line 191
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 197
    :cond_4
    :goto_2
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentVersion;->getBlankContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v0

    goto :goto_1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    sget-object v1, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error encountered while cleaning up version file read operation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 186
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 187
    :goto_3
    :try_start_5
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not extract version from content zip file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    if-eqz v1, :cond_4

    .line 191
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 193
    :catch_3
    move-exception v0

    .line 194
    sget-object v1, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error encountered while cleaning up version file read operation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 189
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 190
    :goto_4
    if-eqz v1, :cond_5

    .line 191
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 195
    :cond_5
    :goto_5
    throw v0

    .line 193
    :catch_4
    move-exception v1

    .line 194
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up version file read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 189
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 186
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method public static createVersionFromFile(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 115
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ags/html5/content/ContentVersion;->parseContentVersion(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 129
    if-eqz v2, :cond_2

    .line 130
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 132
    :cond_2
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up version file read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 126
    :goto_1
    :try_start_4
    sget-object v3, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error encountered in reading version file."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    if-eqz v2, :cond_3

    .line 130
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 132
    :cond_3
    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 139
    :cond_4
    :goto_2
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentVersion;->getBlankContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_2
    move-exception v0

    .line 136
    sget-object v1, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error encountered while cleaning up version file read operation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 128
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 129
    :goto_3
    if-eqz v2, :cond_5

    .line 130
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 132
    :cond_5
    if-eqz v1, :cond_6

    .line 133
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 137
    :cond_6
    :goto_4
    throw v0

    .line 135
    :catch_3
    move-exception v1

    .line 136
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up version file read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 128
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 125
    :catch_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public static createVersionFromZip(Ljava/util/zip/ZipFile;)Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 143
    const-string/jumbo v1, "version.txt"

    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 144
    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ags/html5/content/ContentVersion;->parseContentVersion(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 155
    if-eqz v1, :cond_0

    .line 156
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up version file read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 152
    :goto_1
    :try_start_3
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered in reading version file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    if-eqz v1, :cond_2

    .line 156
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 162
    :cond_2
    :goto_2
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentVersion;->getBlankContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v0

    goto :goto_0

    .line 158
    :catch_2
    move-exception v0

    .line 159
    sget-object v1, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error encountered while cleaning up version file read operation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 154
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 155
    :goto_3
    if-eqz v1, :cond_3

    .line 156
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 160
    :cond_3
    :goto_4
    throw v0

    .line 158
    :catch_3
    move-exception v1

    .line 159
    sget-object v2, Lcom/amazon/ags/html5/content/ContentVersion;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error encountered while cleaning up version file read operation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 154
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 151
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static getBlankContentVersion()Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 111
    new-instance v0, Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-direct {v0, v1, v1, v1}, Lcom/amazon/ags/html5/content/ContentVersion;-><init>(III)V

    return-object v0
.end method

.method private static parseContentVersion(Ljava/lang/String;)Lcom/amazon/ags/html5/content/ContentVersion;
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 201
    .line 202
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const-string/jumbo v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    array-length v2, v0

    if-eq v2, v4, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v1

    .line 207
    :cond_1
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string/jumbo v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 209
    array-length v0, v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 213
    :try_start_0
    new-instance v0, Lcom/amazon/ags/html5/content/ContentVersion;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v3, v4, v2}, Lcom/amazon/ags/html5/content/ContentVersion;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 218
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/amazon/ags/html5/content/ContentVersion;)I
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Compared version must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->majorVersion:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazon/ags/html5/content/ContentVersion;->getMajorVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 89
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->minorVersion:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazon/ags/html5/content/ContentVersion;->getMinorVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 90
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->patchVersion:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazon/ags/html5/content/ContentVersion;->getPatchVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 91
    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-virtual {p0, p1}, Lcom/amazon/ags/html5/content/ContentVersion;->compareTo(Lcom/amazon/ags/html5/content/ContentVersion;)I

    move-result v0

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->majorVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->minorVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPatchVersion()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentVersion;->patchVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentVersion;->majorVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentVersion;->minorVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentVersion;->patchVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/amazon/ags/html5/content/ContentVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
