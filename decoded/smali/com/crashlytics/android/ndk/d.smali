.class Lcom/crashlytics/android/ndk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/crashlytics/android/c/a/a/a;

.field private static final b:[Lcom/crashlytics/android/c/a/a/f;

.field private static final c:[Lcom/crashlytics/android/c/a/a/g;


# instance fields
.field private final d:Lcom/crashlytics/android/ndk/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    new-array v0, v1, [Lcom/crashlytics/android/c/a/a/a;

    sput-object v0, Lcom/crashlytics/android/ndk/d;->a:[Lcom/crashlytics/android/c/a/a/a;

    .line 60
    new-array v0, v1, [Lcom/crashlytics/android/c/a/a/f;

    sput-object v0, Lcom/crashlytics/android/ndk/d;->b:[Lcom/crashlytics/android/c/a/a/f;

    .line 61
    new-array v0, v1, [Lcom/crashlytics/android/c/a/a/g;

    sput-object v0, Lcom/crashlytics/android/ndk/d;->c:[Lcom/crashlytics/android/c/a/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/crashlytics/android/ndk/j;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/j;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/d;-><init>(Lcom/crashlytics/android/ndk/c;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/c;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/crashlytics/android/ndk/d;->d:Lcom/crashlytics/android/ndk/c;

    .line 77
    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/ndk/b;->f()Lcom/crashlytics/android/ndk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/ndk/b;->t()Landroid/content/Context;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 297
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 302
    :cond_0
    :goto_0
    return-object p0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "JsonCrashDataParser"

    const-string/jumbo v3, "Error getting ApplicationInfo"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/crashlytics/android/ndk/h;)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 306
    iget-object v0, p0, Lcom/crashlytics/android/ndk/h;->c:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/ndk/h;->d:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-static {v0}, Lcom/crashlytics/android/ndk/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 288
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/crashlytics/android/c/a/a/c;
    .locals 13

    .prologue
    .line 145
    const-string/jumbo v0, "orientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    const-string/jumbo v0, "total_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 147
    const-string/jumbo v0, "total_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 148
    const-string/jumbo v0, "available_physical_memory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 149
    const-string/jumbo v0, "available_internal_storage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 150
    const-string/jumbo v0, "battery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 152
    const-string/jumbo v0, "battery_velocity"

    const/4 v11, 0x1

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 153
    const-string/jumbo v0, "proximity_enabled"

    const/4 v12, 0x0

    invoke-virtual {p1, v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 155
    new-instance v0, Lcom/crashlytics/android/c/a/a/c;

    invoke-direct/range {v0 .. v12}, Lcom/crashlytics/android/c/a/a/c;-><init>(IJJJJIIZ)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/crashlytics/android/c/a/a/d;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 80
    const-string/jumbo v0, "\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 89
    const/4 v0, 0x0

    move v8, v0

    move-object v5, v9

    move-object v6, v9

    move-object v2, v9

    move-object v4, v9

    move-object v7, v9

    move-object v0, v9

    :goto_0
    array-length v1, v10

    if-ge v8, v1, :cond_0

    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    aget-object v3, v10, v8

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move-object v1, v5

    move-object v3, v2

    move-object v2, v6

    move-object v5, v7

    .line 89
    :goto_1
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-object v7, v5

    move-object v6, v2

    move-object v5, v1

    move-object v2, v3

    goto :goto_0

    :pswitch_1
    move-object v3, v2

    move-object v2, v6

    move-object v11, v5

    move-object v5, v1

    move-object v1, v11

    .line 99
    goto :goto_1

    :pswitch_2
    move-object v3, v2

    move-object v4, v1

    move-object v1, v5

    move-object v2, v6

    move-object v5, v7

    .line 102
    goto :goto_1

    :pswitch_3
    move-object v2, v6

    move-object v3, v1

    move-object v1, v5

    move-object v5, v7

    .line 105
    goto :goto_1

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v7

    .line 108
    goto :goto_1

    :pswitch_5
    move-object v3, v2

    move-object v5, v7

    move-object v2, v6

    .line 111
    goto :goto_1

    :pswitch_6
    move-object v0, v1

    move-object v3, v2

    move-object v2, v6

    move-object v1, v5

    move-object v5, v7

    .line 114
    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 120
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-nez v7, :cond_2

    .line 121
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "Could not parse required crash data"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    const-string/jumbo v1, "time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 125
    invoke-virtual {p0, v4}, Lcom/crashlytics/android/ndk/d;->b(Lorg/json/JSONObject;)Lcom/crashlytics/android/c/a/a/e;

    move-result-object v4

    .line 127
    if-nez v5, :cond_3

    invoke-virtual {p0, v7}, Lcom/crashlytics/android/ndk/d;->c(Lorg/json/JSONObject;)[Lcom/crashlytics/android/c/a/a/f;

    move-result-object v5

    .line 130
    :goto_2
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/ndk/d;->b(Ljava/lang/String;)[Lcom/crashlytics/android/c/a/a/b;

    move-result-object v7

    .line 131
    if-eqz v6, :cond_4

    invoke-virtual {p0, v6}, Lcom/crashlytics/android/ndk/d;->a(Lorg/json/JSONObject;)Lcom/crashlytics/android/c/a/a/c;

    move-result-object v8

    .line 132
    :goto_3
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/d;->d(Lorg/json/JSONObject;)[Lcom/crashlytics/android/c/a/a/a;

    move-result-object v6

    .line 134
    new-instance v1, Lcom/crashlytics/android/c/a/a/d;

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/c/a/a/d;-><init>(JLcom/crashlytics/android/c/a/a/e;[Lcom/crashlytics/android/c/a/a/f;[Lcom/crashlytics/android/c/a/a/a;[Lcom/crashlytics/android/c/a/a/b;Lcom/crashlytics/android/c/a/a/c;)V

    return-object v1

    .line 127
    :cond_3
    invoke-virtual {p0, v5}, Lcom/crashlytics/android/ndk/d;->e(Lorg/json/JSONObject;)[Lcom/crashlytics/android/c/a/a/f;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v8, v9

    .line 131
    goto :goto_3

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/c/a/a/g;
    .locals 5

    .prologue
    .line 244
    const-string/jumbo v0, "frames"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 245
    if-nez v2, :cond_1

    .line 246
    sget-object v0, Lcom/crashlytics/android/ndk/d;->c:[Lcom/crashlytics/android/c/a/a/g;

    .line 259
    :cond_0
    return-object v0

    .line 249
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 250
    new-array v0, v3, [Lcom/crashlytics/android/c/a/a/g;

    .line 251
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 252
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 253
    if-nez v4, :cond_2

    .line 251
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0, v4, p2}, Lcom/crashlytics/android/ndk/d;->b(Lorg/json/JSONObject;I)Lcom/crashlytics/android/c/a/a/g;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_1
.end method

.method public b(Lorg/json/JSONObject;)Lcom/crashlytics/android/c/a/a/e;
    .locals 5

    .prologue
    .line 168
    const-string/jumbo v0, "sig_name"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "sig_code"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string/jumbo v2, "si_addr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 171
    new-instance v4, Lcom/crashlytics/android/c/a/a/e;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/crashlytics/android/c/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method public b(Lorg/json/JSONObject;I)Lcom/crashlytics/android/c/a/a/g;
    .locals 9

    .prologue
    .line 263
    const-string/jumbo v0, "pc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 264
    const-string/jumbo v0, "symbol"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    .line 266
    :cond_0
    new-instance v1, Lcom/crashlytics/android/c/a/a/g;

    const-string/jumbo v5, ""

    const-wide/16 v6, 0x0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/c/a/a/g;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    return-object v1
.end method

.method public b(Ljava/lang/String;)[Lcom/crashlytics/android/c/a/a/b;
    .locals 4

    .prologue
    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/crashlytics/android/c/a/a/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/c/a/a/b;

    const-string/jumbo v3, "json_session"

    invoke-direct {v2, v3, p1}, Lcom/crashlytics/android/c/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)[Lcom/crashlytics/android/c/a/a/f;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-array v0, v3, [Lcom/crashlytics/android/c/a/a/g;

    invoke-virtual {p0, p1, v4}, Lcom/crashlytics/android/ndk/d;->b(Lorg/json/JSONObject;I)Lcom/crashlytics/android/c/a/a/g;

    move-result-object v1

    aput-object v1, v0, v2

    .line 179
    new-instance v1, Lcom/crashlytics/android/c/a/a/f;

    invoke-direct {v1, v4, v0}, Lcom/crashlytics/android/c/a/a/f;-><init>(I[Lcom/crashlytics/android/c/a/a/g;)V

    .line 180
    new-array v0, v3, [Lcom/crashlytics/android/c/a/a/f;

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)[Lcom/crashlytics/android/c/a/a/a;
    .locals 11

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    sget-object v0, Lcom/crashlytics/android/ndk/d;->a:[Lcom/crashlytics/android/c/a/a/a;

    .line 220
    :goto_0
    return-object v0

    .line 190
    :cond_0
    :try_start_0
    const-string/jumbo v0, "maps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/crashlytics/android/ndk/d;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 198
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 199
    const/4 v0, 0x0

    :goto_1
    array-length v1, v8

    if-ge v0, v1, :cond_3

    .line 200
    aget-object v1, v8, v0

    .line 201
    invoke-static {v1}, Lcom/crashlytics/android/ndk/i;->a(Ljava/lang/String;)Lcom/crashlytics/android/ndk/h;

    move-result-object v10

    .line 203
    if-eqz v10, :cond_1

    invoke-static {v10}, Lcom/crashlytics/android/ndk/d;->a(Lcom/crashlytics/android/ndk/h;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-object v0, Lcom/crashlytics/android/ndk/d;->a:[Lcom/crashlytics/android/c/a/a/a;

    goto :goto_0

    .line 207
    :cond_2
    iget-object v6, v10, Lcom/crashlytics/android/ndk/h;->d:Ljava/lang/String;

    .line 208
    invoke-static {v6}, Lcom/crashlytics/android/ndk/d;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 211
    :try_start_1
    iget-object v2, p0, Lcom/crashlytics/android/ndk/d;->d:Lcom/crashlytics/android/ndk/c;

    invoke-interface {v2, v1}, Lcom/crashlytics/android/ndk/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 212
    new-instance v1, Lcom/crashlytics/android/c/a/a/a;

    iget-wide v2, v10, Lcom/crashlytics/android/ndk/h;->a:J

    iget-wide v4, v10, Lcom/crashlytics/android/ndk/h;->b:J

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/c/a/a/a;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 215
    :catch_1
    move-exception v1

    .line 216
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "JsonCrashDataParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not generate ID for file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/crashlytics/android/ndk/h;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 220
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/crashlytics/android/c/a/a/a;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/c/a/a/a;

    goto :goto_0
.end method

.method public e(Lorg/json/JSONObject;)[Lcom/crashlytics/android/c/a/a/f;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 224
    const-string/jumbo v0, "threads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 225
    if-nez v4, :cond_0

    .line 226
    sget-object v0, Lcom/crashlytics/android/ndk/d;->b:[Lcom/crashlytics/android/c/a/a/f;

    .line 239
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 230
    new-array v2, v5, [Lcom/crashlytics/android/c/a/a/f;

    move v3, v1

    .line 231
    :goto_1
    if-ge v3, v5, :cond_2

    .line 232
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 233
    const-string/jumbo v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 234
    const-string/jumbo v0, "crashed"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 236
    :goto_2
    new-instance v8, Lcom/crashlytics/android/c/a/a/f;

    invoke-virtual {p0, v6, v0}, Lcom/crashlytics/android/ndk/d;->a(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/c/a/a/g;

    move-result-object v6

    invoke-direct {v8, v7, v0, v6}, Lcom/crashlytics/android/c/a/a/f;-><init>(Ljava/lang/String;I[Lcom/crashlytics/android/c/a/a/g;)V

    aput-object v8, v2, v3

    .line 231
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 234
    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 239
    goto :goto_0
.end method
