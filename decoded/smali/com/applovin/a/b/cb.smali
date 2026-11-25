.class Lcom/applovin/a/b/cb;
.super Lcom/applovin/a/b/ba;

# interfaces
.implements Lcom/applovin/a/b/cn;


# instance fields
.field private final a:Ljava/util/Collection;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lcom/applovin/c/d;

.field private final d:Lcom/applovin/a/b/dj;

.field private i:Z

.field private j:Lcom/applovin/a/b/bf;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/c/d;Lcom/applovin/a/b/e;)V
    .locals 3

    const-string/jumbo v0, "RenderAd"

    invoke-direct {p0, v0, p3}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    new-instance v0, Lcom/applovin/a/b/bf;

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    sget-object v2, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-direct {v0, v1, v2}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    iput-object v0, p0, Lcom/applovin/a/b/cb;->j:Lcom/applovin/a/b/bf;

    iput-object p1, p0, Lcom/applovin/a/b/cb;->b:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/applovin/a/b/cb;->c:Lcom/applovin/c/d;

    invoke-direct {p0}, Lcom/applovin/a/b/cb;->d()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/cb;->a:Ljava/util/Collection;

    invoke-virtual {p3}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/cb;->d:Lcom/applovin/a/b/dj;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/c/h;I)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sget-object v1, Lcom/applovin/c/h;->b:Lcom/applovin/c/h;

    invoke-virtual {p2, v1}, Lcom/applovin/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-virtual {p2, v1}, Lcom/applovin/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Lcom/applovin/a/a/al;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/applovin/a/a/al;->b:Lcom/applovin/a/a/al;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/a/a/al;->a:Lcom/applovin/a/a/al;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/applovin/a/a/al;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/applovin/a/a/al;->b:Lcom/applovin/a/a/al;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/a/a/al;->a:Lcom/applovin/a/a/al;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "/"

    const-string/jumbo v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/a/b/cb;->d:Lcom/applovin/a/b/dj;

    iget-object v3, p0, Lcom/applovin/a/b/cb;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v3}, Lcom/applovin/a/b/e;->h()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/applovin/a/b/dj;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from cache: file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/cb;->d:Lcom/applovin/a/b/dj;

    invoke-virtual {v3, v1, v2}, Lcom/applovin/a/b/dj;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 23

    const-string/jumbo v4, "html"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/c/g;->a(Ljava/lang/String;)Lcom/applovin/c/g;

    move-result-object v4

    move-object/from16 v18, v4

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/applovin/a/b/cb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v4, "ad_target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "ad_target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/a/b/b;->valueOf(Ljava/lang/String;)Lcom/applovin/a/b/b;

    move-result-object v4

    move-object v5, v4

    :goto_1
    const-string/jumbo v4, "ad_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ad_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/c/h;->a(Ljava/lang/String;)Lcom/applovin/c/h;

    move-result-object v4

    move-object v6, v4

    :goto_2
    new-instance v4, Lcom/applovin/a/b/bf;

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v6}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/applovin/a/b/cb;->j:Lcom/applovin/a/b/bf;

    const-string/jumbo v4, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/a/b/cb;->d:Lcom/applovin/a/b/dj;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/applovin/a/b/cb;->h:Landroid/content/Context;

    invoke-virtual {v8, v9, v4}, Lcom/applovin/a/b/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/applovin/a/b/cb;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    :goto_3
    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/a/b/cb;->c()V

    :goto_4
    return-void

    :cond_0
    sget-object v4, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    move-object/from16 v18, v4

    goto/16 :goto_0

    :cond_1
    sget-object v4, Lcom/applovin/a/b/b;->a:Lcom/applovin/a/b/b;

    move-object v5, v4

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    move-object v6, v4

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v4, v7

    goto :goto_3

    :cond_3
    move-object v7, v4

    :cond_4
    const-wide/16 v8, -0x1

    const-string/jumbo v4, "ad_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "ad_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_5
    const-string/jumbo v4, "countdown_length"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :try_start_1
    const-string/jumbo v4, "countdown_length"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move v10, v4

    :goto_5
    const-string/jumbo v4, "close_delay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :try_start_2
    const-string/jumbo v4, "close_delay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    move v11, v4

    :goto_6
    const-string/jumbo v4, "close_delay_graphic"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :try_start_3
    const-string/jumbo v4, "close_delay_graphic"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    int-to-float v4, v4

    move v12, v4

    :goto_7
    const-string/jumbo v4, "close_style"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :try_start_4
    const-string/jumbo v4, "close_style"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/applovin/a/b/cb;->a(I)Lcom/applovin/a/a/al;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    move-object v13, v4

    :goto_8
    const-string/jumbo v14, ""

    const-string/jumbo v4, "clcodes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    :try_start_5
    const-string/jumbo v4, "clcodes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v4

    :goto_9
    const-string/jumbo v14, ""

    const-string/jumbo v15, "video_end_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    :try_start_6
    const-string/jumbo v15, "video_end_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    move-result-object v14

    :cond_6
    :goto_a
    const-string/jumbo v15, ""

    const-string/jumbo v16, "mute_image"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/a/b/cb;->f:Lcom/applovin/a/b/e;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/a/b/cb;->h:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v20, "mute_image"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/a/b/dj;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v15

    :cond_7
    :goto_b
    const-string/jumbo v16, ""

    const-string/jumbo v17, "unmute_image"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/a/b/cb;->f:Lcom/applovin/a/b/e;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/a/b/cb;->h:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "unmute_image"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/a/b/dj;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v16

    :cond_8
    :goto_c
    const-string/jumbo v17, ""

    const-string/jumbo v20, "click_tracking_url"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    :try_start_9
    const-string/jumbo v20, "click_tracking_url"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v17

    :cond_9
    :goto_d
    new-instance v20, Lcom/applovin/a/b/c;

    invoke-direct/range {v20 .. v20}, Lcom/applovin/a/b/c;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/c;->a(Ljava/lang/String;)Lcom/applovin/a/b/c;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/c;->a(Lcom/applovin/c/g;)Lcom/applovin/a/b/c;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/applovin/a/b/c;->a(Lcom/applovin/c/h;)Lcom/applovin/a/b/c;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/applovin/a/b/c;->b(Ljava/lang/String;)Lcom/applovin/a/b/c;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/applovin/a/b/c;->a(Lcom/applovin/a/b/b;)Lcom/applovin/a/b/c;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/applovin/a/b/c;->a(Lcom/applovin/a/a/al;)Lcom/applovin/a/b/c;

    move-result-object v5

    int-to-float v6, v11

    invoke-virtual {v5, v6}, Lcom/applovin/a/b/c;->a(F)Lcom/applovin/a/b/c;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/applovin/a/b/c;->b(F)Lcom/applovin/a/b/c;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/applovin/a/b/c;->a(I)Lcom/applovin/a/b/c;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/applovin/a/b/c;->a(J)Lcom/applovin/a/b/c;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/applovin/a/b/c;->c(Ljava/lang/String;)Lcom/applovin/a/b/c;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/applovin/a/b/c;->d(Ljava/lang/String;)Lcom/applovin/a/b/c;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/applovin/a/b/c;->e(Ljava/lang/String;)Lcom/applovin/a/b/c;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/applovin/a/b/c;->f(Ljava/lang/String;)Lcom/applovin/a/b/c;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/applovin/a/b/c;->g(Ljava/lang/String;)Lcom/applovin/a/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/a/b/c;->a()Lcom/applovin/a/b/a;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/applovin/a/b/cb;->a(Lcom/applovin/c/a;)V

    goto/16 :goto_4

    :catch_1
    move-exception v4

    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_5

    :cond_a
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_5

    :catch_2
    move-exception v4

    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_6

    :cond_b
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_6

    :catch_3
    move-exception v4

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v11}, Lcom/applovin/a/b/cb;->a(Ljava/lang/String;Lcom/applovin/c/h;I)F

    move-result v4

    move v12, v4

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v11}, Lcom/applovin/a/b/cb;->a(Ljava/lang/String;Lcom/applovin/c/h;I)F

    move-result v4

    move v12, v4

    goto/16 :goto_7

    :catch_4
    move-exception v4

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/applovin/a/b/cb;->a(Ljava/lang/String;)Lcom/applovin/a/a/al;

    move-result-object v4

    move-object v13, v4

    goto/16 :goto_8

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/applovin/a/b/cb;->a(Ljava/lang/String;)Lcom/applovin/a/a/al;

    move-result-object v4

    move-object v13, v4

    goto/16 :goto_8

    :catch_5
    move-exception v4

    move-object v4, v14

    goto/16 :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    const-string/jumbo v6, "No HTML received for requested ad"

    invoke-interface {v4, v5, v6}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/a/b/cb;->c()V

    goto/16 :goto_4

    :catch_6
    move-exception v20

    goto/16 :goto_d

    :catch_7
    move-exception v17

    goto/16 :goto_c

    :catch_8
    move-exception v16

    goto/16 :goto_b

    :catch_9
    move-exception v15

    goto/16 :goto_a

    :cond_f
    move-object v4, v14

    goto/16 :goto_9

    :cond_10
    move-object v4, v7

    goto/16 :goto_3
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/cb;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->H:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/cb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/cb;->f:Lcom/applovin/a/b/e;

    sget-object v2, Lcom/applovin/a/b/bb;->I:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v5, v3

    move v0, v1

    move v2, v1

    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    invoke-virtual {v4, v7, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move v0, v2

    :goto_2
    iget-object v9, p0, Lcom/applovin/a/b/cb;->a:Ljava/util/Collection;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-ge v0, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-le v0, v2, :cond_4

    if-eq v0, v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v4, v8, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/applovin/a/b/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v2, v0, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    iget-object v9, p0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    const-string/jumbo v10, "Unable to cache resource; ad HTML is invalid."

    invoke-interface {v8, v9, v10}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/util/Collection;
    .locals 5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/applovin/a/b/cb;->f:Lcom/applovin/a/b/e;

    sget-object v2, Lcom/applovin/a/b/bb;->ap:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, v2, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method a(Lcom/applovin/c/a;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/cb;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/a/b/cb;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rendered new ad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/cb;->c:Lcom/applovin/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/cb;->c:Lcom/applovin/c/d;

    invoke-interface {v0, p1}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/b/cb;->c:Lcom/applovin/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/cb;->c:Lcom/applovin/c/d;

    instance-of v0, v0, Lcom/applovin/a/b/dh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/cb;->c:Lcom/applovin/c/d;

    check-cast v0, Lcom/applovin/a/b/dh;

    iget-object v1, p0, Lcom/applovin/a/b/cb;->j:Lcom/applovin/a/b/bf;

    const/4 v2, -0x6

    invoke-interface {v0, v1, v2}, Lcom/applovin/a/b/dh;->a(Lcom/applovin/a/b/bf;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/cb;->c:Lcom/applovin/c/d;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/applovin/c/d;->failedToReceiveAd(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    const-string/jumbo v3, "Unable process a failure to receive an ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tRA"

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/b/cb;->i:Z

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    iget-object v1, p0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    const-string/jumbo v2, "Rendering ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/b/cb;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/applovin/a/b/cb;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse ad service response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/a/b/cb;->c()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    const-string/jumbo v3, "Ad response is not valid"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/a/b/cb;->c()V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/cb;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/cb;->e:Ljava/lang/String;

    const-string/jumbo v3, "Unable to render ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/a/b/cb;->c()V

    goto :goto_0
.end method
