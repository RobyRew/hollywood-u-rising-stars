.class Lcom/leanplum/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I

.field private static h:Lcom/leanplum/bh;

.field private static i:Ljava/lang/String;

.field private static final j:Ljava/lang/Object;

.field private static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/String;

.field private static n:J

.field private static final o:Ljava/lang/Object;

.field private static v:Lcom/leanplum/bf;


# instance fields
.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/leanplum/bi;

.field private t:Lcom/leanplum/bg;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/leanplum/y;->a:J

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/y;->f:Ljava/util/Map;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/leanplum/y;->i:Ljava/lang/String;

    .line 53
    const-class v0, Lcom/leanplum/y;

    sput-object v0, Lcom/leanplum/y;->j:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/y;->k:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/y;->l:Ljava/util/Map;

    .line 56
    const-string/jumbo v0, ""

    sput-object v0, Lcom/leanplum/y;->m:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/leanplum/y;->o:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/leanplum/y;->p:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/leanplum/y;->q:Ljava/lang/String;

    .line 129
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/leanplum/y;->r:Ljava/util/Map;

    .line 132
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    .line 133
    return-void

    .line 129
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 752
    if-nez p0, :cond_0

    .line 759
    :goto_0
    return v0

    .line 756
    :cond_0
    :try_start_0
    const-string/jumbo v1, "response"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Could not parse JSON response"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/y;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/leanplum/bw;->a()Lcom/leanplum/bw;

    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/leanplum/bw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/leanplum/y;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    const/16 v0, 0x400

    if-ge p0, v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 513
    :cond_0
    const/high16 v0, 0x100000

    if-ge p0, v0, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/leanplum/y;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/leanplum/y;->p:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    sget-object v3, Lcom/leanplum/y;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 450
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/leanplum/y;->n:J

    .line 452
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 453
    const-string/jumbo v4, "__leanplum__"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 455
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 457
    const-string/jumbo v2, "__leanplum_unsynced"

    const/4 v6, 0x0

    invoke-interface {v4, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 458
    if-nez v6, :cond_0

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v3

    .line 487
    :goto_0
    return-object v0

    .line 461
    :cond_0
    if-eqz p0, :cond_1

    .line 462
    const-string/jumbo v2, "__leanplum_unsynced"

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    move v2, v1

    .line 465
    :goto_1
    if-ge v2, v6, :cond_3

    .line 466
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "__leanplum_unsynced_%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 469
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v8, "{}"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 470
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :goto_2
    if-eqz p0, :cond_2

    .line 475
    :try_start_2
    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 471
    :catch_0
    move-exception v1

    .line 472
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 478
    :cond_3
    if-eqz p0, :cond_4

    .line 480
    :try_start_3
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    :cond_4
    :goto_3
    :try_start_4
    monitor-exit v3

    goto :goto_0

    .line 482
    :catch_1
    move-exception v1

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method static a(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 765
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Could not parse JSON response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/leanplum/bf;)V
    .locals 0

    .prologue
    .line 152
    sput-object p0, Lcom/leanplum/y;->v:Lcom/leanplum/bf;

    .line 153
    return-void
.end method

.method static a(Lcom/leanplum/bh;)V
    .locals 0

    .prologue
    .line 747
    sput-object p0, Lcom/leanplum/y;->h:Lcom/leanplum/bh;

    .line 748
    return-void
.end method

.method static synthetic a(Lcom/leanplum/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leanplum/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/leanplum/y;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 37
    .line 3295
    sget-object v0, Lcom/leanplum/y;->v:Lcom/leanplum/bf;

    if-eqz v0, :cond_0

    .line 3296
    sget-object v0, Lcom/leanplum/y;->v:Lcom/leanplum/bf;

    invoke-virtual {v0, p2, p1}, Lcom/leanplum/bf;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 3299
    :cond_0
    if-eqz p1, :cond_a

    .line 3300
    const/4 v1, 0x0

    .line 3301
    invoke-static {p1}, Lcom/leanplum/y;->a(Lorg/json/JSONObject;)I

    move-result v3

    .line 3302
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v3, :cond_7

    .line 3303
    invoke-static {p1, v2}, Lcom/leanplum/y;->a(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3304
    invoke-static {v1}, Lcom/leanplum/y;->c(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3305
    invoke-static {v1}, Lcom/leanplum/y;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 3306
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 3307
    :cond_1
    const-string/jumbo v1, "API error"

    .line 3321
    :goto_1
    const-string/jumbo v4, "Leanplum"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_2

    .line 3323
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3302
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3308
    :cond_3
    const-string/jumbo v4, "App not found"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3309
    const-string/jumbo v1, "No app matching the provided app ID was found."

    .line 3310
    sput-boolean v6, Lcom/leanplum/cu;->p:Z

    goto :goto_1

    .line 3311
    :cond_4
    const-string/jumbo v4, "Invalid access key"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3312
    const-string/jumbo v1, "The access key you provided is not valid for this app."

    .line 3313
    sput-boolean v6, Lcom/leanplum/cu;->p:Z

    goto :goto_1

    .line 3314
    :cond_5
    const-string/jumbo v4, "Development mode requested but not permitted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3315
    const-string/jumbo v1, "A call to Leanplum.setAppIdForDevelopmentMode with your production key was made, which is not permitted."

    .line 3317
    sput-boolean v6, Lcom/leanplum/cu;->p:Z

    goto :goto_1

    .line 3319
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "API error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3328
    :cond_7
    if-nez v0, :cond_b

    .line 3332
    :goto_2
    if-eqz p3, :cond_9

    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    if-eqz v0, :cond_9

    .line 3333
    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V

    .line 3337
    :cond_8
    :goto_3
    return-void

    .line 3334
    :cond_9
    iget-object v0, p0, Lcom/leanplum/y;->s:Lcom/leanplum/bi;

    if-eqz v0, :cond_8

    .line 3335
    iget-object v0, p0, Lcom/leanplum/y;->s:Lcom/leanplum/bi;

    invoke-interface {v0, p1}, Lcom/leanplum/bi;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 3337
    :cond_a
    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    if-eqz v0, :cond_8

    .line 3338
    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V

    goto :goto_3

    :cond_b
    move-object p3, v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    sput-object p0, Lcom/leanplum/y;->d:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lcom/leanplum/y;->b:Ljava/lang/String;

    .line 62
    sput-object p1, Lcom/leanplum/y;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 686
    .line 689
    :try_start_0
    iget-object v3, p0, Lcom/leanplum/y;->p:Ljava/lang/String;

    sget-boolean v4, Lcom/leanplum/cu;->d:Z

    sget v5, Lcom/leanplum/cu;->f:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/leanplum/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZI)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 696
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 697
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 698
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 699
    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    .line 700
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Leanplum: Error sending request to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", HTTP status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    :catch_0
    move-exception v0

    move-object v6, v2

    .line 721
    :goto_0
    :try_start_3
    instance-of v2, v0, Ljava/io/EOFException;

    if-eqz v2, :cond_7

    .line 722
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 723
    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/leanplum/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 736
    if-eqz v6, :cond_0

    .line 737
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 740
    :cond_0
    :goto_1
    return-void

    .line 702
    :cond_1
    :try_start_4
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    move-object v0, p3

    .line 704
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 705
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 736
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    .line 737
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 707
    :cond_3
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 708
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/leanplum/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    goto :goto_4

    .line 711
    :cond_4
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-static {p3}, Lcom/leanplum/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 712
    invoke-static {v2, v0}, Lcom/leanplum/x;->a(Ljava/net/URLConnection;Ljava/io/OutputStream;)V

    .line 713
    sget v0, Lcom/leanplum/y;->g:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/leanplum/y;->g:I

    .line 714
    iget-object v0, p0, Lcom/leanplum/y;->s:Lcom/leanplum/bi;

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, p0, Lcom/leanplum/y;->s:Lcom/leanplum/bi;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/leanplum/bi;->a(Lorg/json/JSONObject;)V

    .line 717
    :cond_5
    sget v0, Lcom/leanplum/y;->g:I

    if-nez v0, :cond_6

    sget-object v0, Lcom/leanplum/y;->h:Lcom/leanplum/bh;

    if-eqz v0, :cond_6

    .line 718
    sget-object v0, Lcom/leanplum/y;->h:Lcom/leanplum/bh;

    invoke-virtual {v0}, Lcom/leanplum/bh;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 736
    :cond_6
    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 727
    :cond_7
    :try_start_6
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error downloading resource:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    sget v0, Lcom/leanplum/y;->g:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/leanplum/y;->g:I

    .line 729
    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    if-eqz v0, :cond_8

    .line 730
    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V

    .line 732
    :cond_8
    sget v0, Lcom/leanplum/y;->g:I

    if-nez v0, :cond_9

    sget-object v0, Lcom/leanplum/y;->h:Lcom/leanplum/bh;

    if-eqz v0, :cond_9

    .line 733
    sget-object v0, Lcom/leanplum/y;->h:Lcom/leanplum/bh;

    invoke-virtual {v0}, Lcom/leanplum/bh;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 736
    :cond_9
    if-eqz v6, :cond_0

    .line 737
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 736
    :catchall_1
    move-exception v0

    move-object v2, v6

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto/16 :goto_3

    .line 720
    :catch_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v1, v6

    move-object v6, v2

    goto/16 :goto_0
.end method

.method static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 497
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 498
    const-string/jumbo v1, "retryCount"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 505
    :goto_1
    const-string/jumbo v3, "retryCount"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {v0}, Lcom/leanplum/y;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 503
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 508
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    sget-object v1, Lcom/leanplum/y;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    const-string/jumbo v2, "__leanplum__"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 176
    const-string/jumbo v3, "__leanplum_unsynced"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 177
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "__leanplum_unsynced_%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {p0}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    const-string/jumbo v3, "__leanplum_unsynced"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 184
    :catch_0
    move-exception v0

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/leanplum/y;)Lcom/leanplum/bi;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/leanplum/y;->s:Lcom/leanplum/bi;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/y;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/leanplum/bw;->a()Lcom/leanplum/bw;

    const-string/jumbo v0, "POST"

    invoke-static {v0, p0, p1}, Lcom/leanplum/bw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    return-object v0
.end method

.method static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 773
    invoke-static {p0}, Lcom/leanplum/y;->a(Lorg/json/JSONObject;)I

    move-result v0

    .line 774
    if-lez v0, :cond_0

    .line 775
    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/leanplum/y;->a(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 777
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "__leanplum__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "__leanplum_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 1074
    :cond_0
    sput-object v0, Lcom/leanplum/y;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    sput-object p0, Lcom/leanplum/y;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private static b(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lcom/leanplum/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leanplum/y;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 266
    :cond_0
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "API keys are not set. Please use Leanplum.setAppIdForDevelopmentMode or Leanplum.setAppIdForProductionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    .line 271
    :cond_1
    const-string/jumbo v0, "appId"

    sget-object v1, Lcom/leanplum/y;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v0, "clientKey"

    sget-object v1, Lcom/leanplum/y;->c:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v0, "client"

    sget-object v1, Lcom/leanplum/cu;->h:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/leanplum/y;)Lcom/leanplum/bg;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    return-object v0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "__leanplum__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "__leanplum_token"

    .line 1078
    sget-object v2, Lcom/leanplum/y;->i:Ljava/lang/String;

    .line 97
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    sput-object p0, Lcom/leanplum/y;->i:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static c(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 782
    if-nez p0, :cond_0

    .line 789
    :goto_0
    return v0

    .line 786
    :cond_0
    :try_start_0
    const-string/jumbo v1, "success"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 787
    :catch_0
    move-exception v1

    .line 788
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Could not parse JSON response"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/leanplum/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method static d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 794
    if-nez p0, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-object v0

    .line 798
    :cond_1
    :try_start_0
    const-string/jumbo v1, "error"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 799
    if-eqz v1, :cond_0

    .line 802
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v1

    .line 804
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Could not parse JSON response"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/leanplum/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/leanplum/y;->e:Ljava/lang/String;

    return-object v0
.end method

.method static l()I
    .locals 1

    .prologue
    .line 743
    sget v0, Lcom/leanplum/y;->g:I

    return v0
.end method

.method static synthetic m()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/leanplum/y;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic n()Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/leanplum/y;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic o()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/leanplum/y;->q()V

    return-void
.end method

.method private p()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    const-string/jumbo v1, "deviceId"

    sget-object v2, Lcom/leanplum/y;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v1, "userId"

    sget-object v2, Lcom/leanplum/y;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/leanplum/y;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v1, "sdkVersion"

    sget-object v2, Lcom/leanplum/cu;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v1, "devMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/leanplum/cu;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/leanplum/y;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "token"

    sget-object v2, Lcom/leanplum/y;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/leanplum/y;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 167
    return-object v0
.end method

.method private static q()V
    .locals 13

    .prologue
    const/16 v12, 0x2f

    const/4 v0, 0x0

    .line 521
    sget-object v1, Lcom/leanplum/y;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    .line 525
    sget-object v1, Lcom/leanplum/y;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    move v3, v0

    move v4, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 526
    sget-object v1, Lcom/leanplum/y;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 527
    sget-object v1, Lcom/leanplum/y;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 528
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v0, v10

    if-nez v7, :cond_0

    .line 529
    add-int/lit8 v4, v4, 0x1

    .line 531
    :cond_0
    long-to-double v10, v8

    mul-double/2addr v0, v10

    double-to-int v0, v0

    add-int/2addr v0, v2

    .line 532
    int-to-long v2, v3

    add-long/2addr v2, v8

    long-to-int v1, v2

    move v2, v0

    move v3, v1

    .line 533
    goto :goto_0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Uploading resources. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " files completed; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/leanplum/y;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/leanplum/y;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " transferred."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    sget-object v1, Lcom/leanplum/y;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 538
    sput-object v0, Lcom/leanplum/y;->m:Ljava/lang/String;

    .line 539
    const-string/jumbo v1, "Leanplum"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/leanplum/bg;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    .line 149
    return-void
.end method

.method public final a(Lcom/leanplum/bi;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/leanplum/y;->s:Lcom/leanplum/bi;

    .line 145
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 544
    sget-boolean v0, Lcom/leanplum/cu;->l:Z

    if-eqz v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-direct {p0}, Lcom/leanplum/y;->p()Ljava/util/Map;

    move-result-object v6

    .line 548
    invoke-static {v6}, Lcom/leanplum/y;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 554
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 555
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lcom/leanplum/y;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 559
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    :try_start_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    int-to-long v4, v1

    .line 570
    :goto_2
    sget-object v1, Lcom/leanplum/y;->f:Ljava/util/Map;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/leanplum/y;->k:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/leanplum/y;->l:Ljava/util/Map;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 564
    :catch_0
    move-exception v1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_2

    .line 567
    :catch_1
    move-exception v1

    const-string/jumbo v1, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to read file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 575
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/leanplum/y;->q()V

    .line 582
    new-instance v0, Lcom/leanplum/ac;

    invoke-direct {v0, p0, v7, p2, v6}, Lcom/leanplum/ac;-><init>(Lcom/leanplum/y;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/leanplum/x;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 655
    sget-boolean v0, Lcom/leanplum/cu;->l:Z

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/leanplum/y;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    sget v0, Lcom/leanplum/y;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/leanplum/y;->g:I

    .line 662
    const-string/jumbo v0, "Leanplum"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Downloading resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sget-object v0, Lcom/leanplum/y;->f:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-direct {p0}, Lcom/leanplum/y;->p()Ljava/util/Map;

    move-result-object v0

    .line 665
    const-string/jumbo v1, "filename"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {v0}, Lcom/leanplum/y;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    new-instance v1, Lcom/leanplum/be;

    invoke-direct {v1, p0, p1, v0}, Lcom/leanplum/be;-><init>(Lcom/leanplum/y;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/leanplum/x;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final g()V
    .locals 6

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/leanplum/y;->k()V

    .line 191
    sget-boolean v0, Lcom/leanplum/cu;->k:Z

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    sget-wide v2, Lcom/leanplum/y;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/leanplum/y;->n:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/leanplum/y;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 195
    :cond_0
    const-wide/16 v0, 0x64

    .line 199
    :goto_0
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v2

    new-instance v3, Lcom/leanplum/z;

    invoke-direct {v3, p0}, Lcom/leanplum/z;-><init>(Lcom/leanplum/y;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;J)Ljava/lang/Boolean;

    .line 210
    :cond_1
    return-void

    .line 197
    :cond_2
    sget-wide v2, Lcom/leanplum/y;->n:J

    sget-wide v4, Lcom/leanplum/y;->a:J

    add-long/2addr v2, v4

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method final h()V
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/leanplum/y;->k()V

    .line 218
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v0

    new-instance v1, Lcom/leanplum/aa;

    invoke-direct {v1, p0}, Lcom/leanplum/aa;-><init>(Lcom/leanplum/y;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;J)Ljava/lang/Boolean;

    .line 228
    return-void
.end method

.method final i()V
    .locals 6

    .prologue
    .line 234
    sget-boolean v0, Lcom/leanplum/cu;->k:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/leanplum/y;->g()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 238
    sget-wide v2, Lcom/leanplum/y;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    sget-wide v2, Lcom/leanplum/y;->n:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/leanplum/y;->j()V

    goto :goto_0
.end method

.method final j()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 245
    invoke-static {}, Lcom/leanplum/x;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    sget-boolean v0, Lcom/leanplum/cu;->l:Z

    if-nez v0, :cond_0

    .line 1346
    sget-object v0, Lcom/leanplum/y;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1347
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Cannot send request. appId is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 1350
    :cond_1
    sget-object v0, Lcom/leanplum/y;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1351
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Cannot send request. accessKey is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1355
    :cond_2
    invoke-virtual {p0}, Lcom/leanplum/y;->k()V

    .line 1439
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/leanplum/y;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 1358
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1363
    const-string/jumbo v2, "data"

    .line 1491
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1492
    const-string/jumbo v4, "data"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    invoke-static {v3}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 1363
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    const-string/jumbo v2, "sdkVersion"

    sget-object v3, Lcom/leanplum/cu;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "multi"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    const-string/jumbo v2, "time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    invoke-static {v1}, Lcom/leanplum/y;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1371
    new-instance v2, Lcom/leanplum/ab;

    invoke-direct {v2, p0, v1, v0}, Lcom/leanplum/ab;-><init>(Lcom/leanplum/y;Ljava/util/Map;Ljava/util/List;)V

    new-array v0, v8, [Ljava/lang/Void;

    invoke-static {v2, v0}, Lcom/leanplum/x;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/leanplum/y;->k()V

    .line 249
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Device is offline, will send later"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Not connected to the Internet"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    if-eqz v0, :cond_4

    .line 2256
    iget-object v0, p0, Lcom/leanplum/y;->t:Lcom/leanplum/bg;

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V

    .line 2258
    :cond_4
    sget-object v0, Lcom/leanplum/y;->v:Lcom/leanplum/bf;

    if-eqz v0, :cond_0

    .line 2443
    invoke-static {v8}, Lcom/leanplum/y;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 2260
    sget-object v1, Lcom/leanplum/y;->v:Lcom/leanplum/bf;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/leanplum/bf;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method final k()V
    .locals 1

    .prologue
    .line 428
    sget-boolean v0, Lcom/leanplum/cu;->l:Z

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-boolean v0, p0, Lcom/leanplum/y;->u:Z

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/y;->u:Z

    .line 433
    invoke-direct {p0}, Lcom/leanplum/y;->p()Ljava/util/Map;

    move-result-object v0

    .line 434
    invoke-static {v0}, Lcom/leanplum/y;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
