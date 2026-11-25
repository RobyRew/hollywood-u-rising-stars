.class public final Lcom/helpshift/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/bm;",
            ">;"
        }
    .end annotation
.end field

.field protected static e:Z


# instance fields
.field public a:Lcom/helpshift/dx;

.field public b:Lcom/helpshift/ai;

.field c:Ljava/util/Iterator;

.field private f:Lcom/helpshift/dm;

.field private g:Lcom/helpshift/bk;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/l;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/al;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/helpshift/al;->i:I

    .line 56
    iput-object v1, p0, Lcom/helpshift/al;->c:Ljava/util/Iterator;

    .line 69
    iput-object p1, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/helpshift/dx;

    invoke-direct {v0, p1}, Lcom/helpshift/dx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    .line 71
    new-instance v0, Lcom/helpshift/ai;

    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v3}, Lcom/helpshift/dx;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/helpshift/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/dx;)V

    iput-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    .line 75
    new-instance v0, Lcom/helpshift/dm;

    invoke-direct {v0, p1}, Lcom/helpshift/dm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    .line 76
    new-instance v0, Lcom/helpshift/bk;

    invoke-direct {v0, p1}, Lcom/helpshift/bk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/al;->g:Lcom/helpshift/bk;

    .line 77
    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 9

    .prologue
    .line 333
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 334
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->d()Lorg/json/JSONArray;

    move-result-object v3

    .line 335
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 336
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 337
    const-string/jumbo v1, "messages"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 338
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lez v1, :cond_0

    .line 339
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 340
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "localRscMessage_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 341
    const-string/jumbo v1, "id"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "created_at"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->M()V

    .line 1049
    invoke-direct {p0}, Lcom/helpshift/al;->z()V

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/helpshift/de;->a(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 1052
    if-eqz v0, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->a(Ljava/util/HashMap;)V

    .line 1055
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/helpshift/al;)Lcom/helpshift/dm;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    return-object v0
.end method

.method static synthetic a(Lcom/helpshift/al;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/helpshift/al;->a(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_0

    .line 1254
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/helpshift/al;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/helpshift/al;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 428
    :try_start_0
    const-string/jumbo v0, "device_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "country-code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v0, "custom_meta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 432
    const-string/jumbo v1, "private-data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-object p1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception is filtering metaData "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/os/Handler;I)V
    .locals 4

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 352
    const-string/jumbo v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    return-void
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1018
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    new-instance v0, Lcom/helpshift/ap;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/ap;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 1029
    new-instance v1, Lcom/helpshift/aq;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/aq;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 1038
    iget-object v2, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v2, v0, v1, p4, p3}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 288
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 295
    new-instance v1, Lcom/helpshift/bc;

    invoke-direct {v1, p0, p1, p6, p2}, Lcom/helpshift/bc;-><init>(Lcom/helpshift/al;Landroid/os/Handler;Ljava/lang/Boolean;Landroid/os/Handler;)V

    .line 329
    iget-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/ai;->b(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 748
    return-void
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/ai;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1417
    return-void
.end method

.method static synthetic a(Lcom/helpshift/al;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/helpshift/al;->a(Landroid/os/Handler;I)V

    return-void
.end method

.method protected static a(Lcom/helpshift/bm;)V
    .locals 1

    .prologue
    .line 1424
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    .line 1428
    :cond_0
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 13

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/helpshift/al;->n()Ljava/lang/String;

    move-result-object v3

    .line 699
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v4

    .line 700
    iget-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    const-string/jumbo v5, "3.7.1"

    .line 701
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->s()Ljava/lang/String;

    move-result-object v6

    .line 702
    invoke-virtual {p0}, Lcom/helpshift/al;->l()Ljava/lang/String;

    move-result-object v1

    .line 703
    const/4 v2, 0x0

    .line 704
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 705
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/e/aj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "os.version"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 708
    iget-object v0, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    const-string/jumbo v11, "phone"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 709
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v11

    .line 710
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 713
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 717
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 718
    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    if-eqz v0, :cond_0

    .line 720
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_1
    const-string/jumbo v0, "v"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string/jumbo v0, "e"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string/jumbo v0, "s"

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string/jumbo v0, "dm"

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string/jumbo v0, "os"

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string/jumbo v0, "av"

    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v0, "rs"

    invoke-virtual {v1, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 733
    const-string/jumbo v0, "cc"

    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_2
    const-string/jumbo v0, "ln"

    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action_event_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/helpshift/al;->a(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 743
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v2, v0, v1}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 744
    return-void

    :cond_3
    move-object v0, v2

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/helpshift/al;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/helpshift/al;->B()V

    return-void
.end method

.method protected static b(Lcom/helpshift/bm;)V
    .locals 1

    .prologue
    .line 1433
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1434
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1436
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/helpshift/al;)Lcom/helpshift/bk;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/al;->g:Lcom/helpshift/bk;

    return-object v0
.end method

.method static synthetic d(Lcom/helpshift/al;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    return-object v0
.end method

.method private d(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1128
    new-instance v0, Lcom/helpshift/at;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/at;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 1153
    iget-object v1, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v1, p1, v0, p3}, Lcom/helpshift/ai;->a(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1154
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/helpshift/al;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 1117
    const-string/jumbo v1, ""

    .line 1118
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1119
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    .line 1120
    invoke-virtual {v0}, Lcom/helpshift/ew;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1121
    invoke-virtual {v0}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    .line 1118
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1124
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private g(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/helpshift/am;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/am;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 148
    new-instance v1, Lcom/helpshift/ax;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/ax;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 158
    const/4 v2, 0x1

    sput-boolean v2, Lcom/helpshift/al;->e:Z

    .line 159
    iget-object v2, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v2, v0, v1}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 160
    return-void
.end method

.method private h(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/helpshift/bb;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/bb;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 194
    iget-object v1, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v1, v0, p2}, Lcom/helpshift/ai;->b(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 195
    return-void
.end method

.method protected static w()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1440
    sput-boolean v0, Lcom/helpshift/al;->e:Z

    .line 1441
    sget-object v1, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    .line 1442
    :goto_0
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1443
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/bm;

    .line 1444
    if-eqz v0, :cond_0

    .line 1445
    invoke-interface {v0}, Lcom/helpshift/bm;->a()V

    .line 1442
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1449
    :cond_1
    return-void
.end method

.method protected static x()V
    .locals 2

    .prologue
    .line 1453
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1454
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1455
    sget-object v0, Lcom/helpshift/al;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/bm;

    .line 1456
    if-eqz v0, :cond_0

    .line 1457
    invoke-interface {v0}, Lcom/helpshift/bm;->b()V

    .line 1454
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1461
    :cond_1
    return-void
.end method

.method private z()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/helpshift/al;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    move v1, v2

    .line 106
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 107
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    .line 108
    invoke-virtual {v0}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/al;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move v3, v2

    .line 109
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 110
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 111
    iget-object v6, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 106
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    .locals 6

    .prologue
    .line 1265
    new-instance v0, Lcom/helpshift/av;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/av;-><init>(Lcom/helpshift/al;Landroid/os/Handler;ILorg/json/JSONObject;Ljava/lang/String;)V

    .line 1290
    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/helpshift/bi;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->aa()Lorg/json/JSONObject;

    move-result-object v1

    .line 1567
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1569
    if-nez v1, :cond_0

    .line 1570
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1576
    :cond_0
    :try_start_0
    sget-object v2, Lcom/helpshift/bi;->f:Lcom/helpshift/bi;

    if-eq p2, v2, :cond_1

    sget-object v2, Lcom/helpshift/bi;->e:Lcom/helpshift/bi;

    if-eq p2, v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/helpshift/bi;->e:Lcom/helpshift/bi;

    invoke-virtual {v3}, Lcom/helpshift/bi;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/helpshift/bi;->f:Lcom/helpshift/bi;

    invoke-virtual {v3}, Lcom/helpshift/bi;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1581
    :cond_1
    invoke-virtual {p2}, Lcom/helpshift/bi;->ordinal()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1582
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1583
    iget-object v2, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2, v1}, Lcom/helpshift/dx;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :cond_2
    :goto_0
    return-object v0

    .line 1585
    :catch_0
    move-exception v1

    .line 1586
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/ew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    invoke-virtual {v0}, Lcom/helpshift/dm;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Database exception in getting sections data "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->g:Lcom/helpshift/bk;

    invoke-virtual {v0, p1}, Lcom/helpshift/bk;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Database exception in getting faqs for section"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/helpshift/dl;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/helpshift/al;->z()V

    .line 600
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 604
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->J()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->I()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/helpshift/de;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/helpshift/dl;)Ljava/util/ArrayList;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 608
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 613
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 614
    iget-object v3, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 615
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 619
    iget-object v0, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 620
    invoke-virtual {v0}, Lcom/helpshift/l;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 622
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 627
    :cond_4
    return-object v2
.end method

.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/ew;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/ew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 230
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    invoke-virtual {p0, v0}, Lcom/helpshift/al;->a(Lcom/helpshift/ew;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 234
    :cond_1
    return-object v2
.end method

.method protected a(Ljava/lang/Boolean;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/helpshift/al;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/helpshift/al;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/helpshift/e/aj;->a(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/helpshift/e/aj;->a(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/helpshift/al;->a(Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v1

    .line 450
    if-eqz p2, :cond_0

    .line 452
    :try_start_0
    const-string/jumbo v0, "user_info"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-direct {p0, v1}, Lcom/helpshift/al;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 462
    :cond_1
    return-object v1

    .line 453
    :catch_0
    move-exception v0

    .line 454
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "userInfo JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    invoke-virtual {v0}, Lcom/helpshift/dm;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 209
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/helpshift/al;->g(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 215
    :goto_1
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Database exception in getting sections data "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpshift/al;->g(Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_1
.end method

.method protected a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 363
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string/jumbo v1, "ts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Lcom/helpshift/al;->A()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_1
    const/16 v0, 0x193

    invoke-direct {p0, p2, v0}, Lcom/helpshift/al;->a(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 556
    new-instance v0, Lcom/helpshift/bf;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/bf;-><init>(Lcom/helpshift/al;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 577
    new-instance v1, Lcom/helpshift/bg;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/helpshift/bg;-><init>(Lcom/helpshift/al;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;)V

    .line 587
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v2, v0, v1, p3}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v2, v0, v1, p3}, Lcom/helpshift/ai;->b(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 971
    .line 974
    :try_start_0
    const-string/jumbo v0, "com.crittercism.app.Crittercism"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 975
    const-string/jumbo v2, "getUserUUID"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 976
    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 983
    :goto_0
    new-instance v1, Lcom/helpshift/ao;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/ao;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 992
    iget-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "If you are not using Crittercism. Please ignore this"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 979
    :catch_1
    move-exception v0

    .line 980
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "If you are not using Crittercism. Please ignore this"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 503
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    return-void
.end method

.method protected a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 513
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v8

    .line 514
    new-instance v0, Lcom/helpshift/be;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/be;-><init>(Lcom/helpshift/al;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 530
    iget-object v1, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method protected a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8

    .prologue
    .line 468
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/helpshift/al;->a(Ljava/lang/Boolean;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    .line 473
    new-instance v0, Lcom/helpshift/bd;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/bd;-><init>(Lcom/helpshift/al;Lorg/json/JSONObject;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v4, v0

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 493
    :cond_0
    new-instance v0, Lcom/helpshift/b/a;

    const-string/jumbo v1, "Identity not found"

    invoke-direct {v0, v1}, Lcom/helpshift/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6

    .prologue
    const/16 v3, 0x190

    .line 1474
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 1475
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1476
    invoke-virtual {p0, p3}, Lcom/helpshift/al;->f(Ljava/lang/String;)Lcom/helpshift/bi;

    move-result-object v0

    .line 1477
    sget-object v1, Lcom/helpshift/bi;->c:Lcom/helpshift/bi;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/helpshift/bi;->f:Lcom/helpshift/bi;

    if-ne v0, v1, :cond_1

    .line 1479
    :cond_0
    new-instance v4, Lcom/helpshift/az;

    invoke-direct {v4, p0, p4, p3}, Lcom/helpshift/az;-><init>(Lcom/helpshift/al;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1492
    sget-object v0, Lcom/helpshift/bi;->e:Lcom/helpshift/bi;

    invoke-virtual {p0, p3, v0}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/bi;)Ljava/lang/Boolean;

    .line 1494
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1496
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1497
    const-string/jumbo v0, "f"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1498
    const-string/jumbo v0, "id"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csat_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {p0, p5, v0, v3, v1}, Lcom/helpshift/al;->a(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 1505
    new-instance v5, Lcom/helpshift/ba;

    invoke-direct {v5, p0, p3, p4, v0}, Lcom/helpshift/ba;-><init>(Lcom/helpshift/al;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1522
    iget-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/ai;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1543
    :goto_1
    return-void

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v5, "JSONException : "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1525
    :cond_1
    invoke-virtual {p5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1526
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1527
    const-string/jumbo v2, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string/jumbo v2, "reason"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CSat survey already done for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1531
    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1534
    :cond_2
    invoke-virtual {p5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1536
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1537
    const-string/jumbo v2, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "Rating not in range"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1541
    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 1069
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    invoke-virtual {v0, p1}, Lcom/helpshift/dm;->a(Ljava/lang/String;)Lcom/helpshift/ew;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1072
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1073
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1075
    :cond_0
    new-instance v0, Lcom/helpshift/as;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/as;-><init>(Lcom/helpshift/al;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1087
    invoke-direct {p0, v0, p3}, Lcom/helpshift/al;->g(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Database exception in getting section data "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/dx;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 536
    const-string/jumbo v1, "invisible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 537
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->a(Lorg/json/JSONObject;)V

    .line 538
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/dx;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 550
    const-string/jumbo v1, "inProgress"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->a(Lorg/json/JSONObject;)V

    .line 552
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, p1}, Lcom/helpshift/dx;->f(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, p2}, Lcom/helpshift/dx;->g(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, p3}, Lcom/helpshift/dx;->h(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/helpshift/ai;

    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-direct {v0, p2, p3, p1, v1}, Lcom/helpshift/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/dx;)V

    iput-object v0, p0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    .line 100
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 915
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 916
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 914
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 918
    :cond_0
    return-void
.end method

.method protected a(Lcom/helpshift/ew;)Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/al;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1297
    new-instance v0, Lcom/helpshift/aw;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/aw;-><init>(Lcom/helpshift/al;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1312
    return-object v0
.end method

.method protected b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/ew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    invoke-virtual {v0}, Lcom/helpshift/dm;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    invoke-virtual {p0, v0}, Lcom/helpshift/al;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Database exception in getting sections data "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->g:Lcom/helpshift/bk;

    invoke-virtual {v0, p1}, Lcom/helpshift/bk;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Database exception in getting faqs for section"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method protected b(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 279
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpshift/al;->h(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 283
    return-void
.end method

.method protected b(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    invoke-virtual {v0, p1}, Lcom/helpshift/dm;->a(Ljava/lang/String;)Lcom/helpshift/ew;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1104
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1105
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1113
    :goto_0
    return-void

    .line 1107
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1108
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Database exception in getting section data "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1372
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1373
    sget-object v1, Lcom/helpshift/e/v;->f:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 1376
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, p1}, Lcom/helpshift/dx;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1377
    const-string/jumbo v2, "messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1378
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1380
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1381
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1382
    const-string/jumbo v7, "origin"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mobile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "seen"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1384
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1385
    const-string/jumbo v7, "seen"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1387
    :cond_0
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1390
    :cond_1
    const-string/jumbo v0, "messages"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1391
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->e(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1399
    :try_start_1
    const-string/jumbo v0, "mids"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1400
    const-string/jumbo v0, "src"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1401
    const-string/jumbo v0, "at"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1405
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg_seen_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v0, v4, v1}, Lcom/helpshift/al;->a(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v2

    .line 1410
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Update messages seen state callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1402
    :catch_1
    move-exception v0

    .line 1403
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/dx;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 543
    const-string/jumbo v1, "screenshot"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->a(Lorg/json/JSONObject;)V

    .line 545
    return-void
.end method

.method protected c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/helpshift/al;->z()V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/helpshift/al;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->F()Lorg/json/JSONArray;

    move-result-object v2

    .line 923
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 925
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 926
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 929
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 932
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 933
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {v3, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 935
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 936
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 937
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 939
    :cond_1
    const/16 v0, 0xa

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/al;->a(Ljava/util/List;)V

    .line 940
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, v2}, Lcom/helpshift/dx;->b(Lorg/json/JSONArray;)V

    .line 952
    :goto_2
    return-void

    .line 942
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 943
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 944
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 946
    :cond_3
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->b(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 949
    :catch_0
    move-exception v0

    .line 950
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "storeFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected c(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 1157
    const/4 v1, 0x0

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->g:Lcom/helpshift/bk;

    invoke-virtual {v0, p1}, Lcom/helpshift/bk;->c(Ljava/lang/String;)Lcom/helpshift/l;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1163
    :goto_0
    if-nez v0, :cond_0

    .line 1164
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/al;->d(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1171
    :goto_1
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Database exception in getting faq "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1167
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1168
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1169
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/al;->d(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_1
.end method

.method protected d(Ljava/lang/String;)Lcom/helpshift/ew;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/helpshift/al;->f:Lcom/helpshift/dm;

    invoke-virtual {v0, p1}, Lcom/helpshift/dm;->a(Ljava/lang/String;)Lcom/helpshift/ew;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 8

    .prologue
    .line 674
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 675
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 677
    :try_start_0
    const-string/jumbo v2, "ts"

    sget-object v3, Lcom/helpshift/e/v;->f:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    const-string/jumbo v2, "t"

    const-string/jumbo v3, "a"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    invoke-direct {p0, v1}, Lcom/helpshift/al;->a(Lorg/json/JSONArray;)V

    .line 684
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected d(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 7

    .prologue
    .line 393
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 399
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 405
    :cond_1
    const/16 v0, 0x193

    invoke-direct {p0, p2, v0}, Lcom/helpshift/al;->a(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 1215
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, p1}, Lcom/helpshift/dx;->u(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2, p1}, Lcom/helpshift/dx;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/dx;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1219
    :goto_0
    return-object v0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 693
    invoke-static {}, Lcom/helpshift/br;->a()Lorg/json/JSONArray;

    move-result-object v0

    .line 694
    invoke-direct {p0, v0}, Lcom/helpshift/al;->a(Lorg/json/JSONArray;)V

    .line 695
    return-void
.end method

.method protected e(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 639
    :try_start_0
    new-instance v0, Lcom/helpshift/bh;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/bh;-><init>(Lcom/helpshift/al;Landroid/os/Handler;)V

    .line 651
    invoke-virtual {p0, v0, p2}, Lcom/helpshift/al;->c(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;)Lcom/helpshift/bi;
    .locals 3

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/helpshift/al;->y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->aa()Lorg/json/JSONObject;

    move-result-object v0

    .line 1550
    if-eqz v0, :cond_0

    .line 1552
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1553
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1554
    invoke-static {}, Lcom/helpshift/bi;->values()[Lcom/helpshift/bi;

    move-result-object v1

    aget-object v0, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    return-object v0

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    :cond_0
    sget-object v0, Lcom/helpshift/bi;->a:Lcom/helpshift/bi;

    goto :goto_0
.end method

.method protected f()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 754
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->E()I

    move-result v0

    if-nez v0, :cond_1

    .line 755
    sget-object v0, Lcom/helpshift/d/b/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "pr"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 756
    sget-object v1, Lcom/helpshift/d/b/a;->b:Ljava/util/Map;

    const-string/jumbo v2, "rurl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 757
    if-eqz v0, :cond_1

    const-string/jumbo v2, "s"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->A()I

    move-result v1

    .line 759
    const-string/jumbo v2, "t"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    const-string/jumbo v3, "i"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 761
    if-lez v0, :cond_1

    .line 762
    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lt v1, v0, :cond_0

    .line 764
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 773
    :goto_0
    return-object v0

    .line 765
    :cond_0
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 768
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 773
    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected f(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 660
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/al;->c(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected g()V
    .locals 4

    .prologue
    .line 778
    :try_start_0
    sget-object v0, Lcom/helpshift/d/b/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "pr"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 779
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v1

    .line 780
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-static {v1}, Lcom/helpshift/d/b/a;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    const-string/jumbo v1, "HelpShiftDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSON Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected h()V
    .locals 7

    .prologue
    .line 791
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->A()I

    move-result v0

    .line 792
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->B()I

    move-result v1

    .line 794
    if-nez v0, :cond_1

    .line 796
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 799
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 800
    iget-object v2, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2, v0}, Lcom/helpshift/dx;->b(I)V

    .line 802
    invoke-virtual {p0}, Lcom/helpshift/al;->g()V

    .line 803
    sget-object v0, Lcom/helpshift/d/b/a;->b:Ljava/util/Map;

    const-string/jumbo v2, "pr"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 804
    if-eqz v0, :cond_0

    .line 805
    const-string/jumbo v2, "t"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string/jumbo v2, "l"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->B()I

    move-result v1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->a(I)V

    .line 811
    return-void

    :cond_1
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method protected i()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->A()I

    move-result v1

    .line 819
    :try_start_0
    iget-object v2, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "pr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 820
    if-eqz v2, :cond_1

    .line 821
    const-string/jumbo v3, "t"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 822
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 827
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->a(I)V

    .line 828
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->b(I)V

    .line 833
    :cond_1
    :goto_1
    return-void

    .line 824
    :cond_2
    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Reseting review counter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->D()V

    .line 837
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->C()V

    .line 841
    return-void
.end method

.method protected l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->n()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 886
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/al;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->T()Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->x(Ljava/lang/String;)V

    .line 896
    :cond_0
    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->T()Ljava/lang/String;

    move-result-object v1

    .line 904
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    :goto_0
    return-object v0

    .line 908
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/al;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected o()V
    .locals 6

    .prologue
    .line 998
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v1

    .line 999
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->o()Ljava/lang/String;

    move-result-object v2

    .line 1001
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1003
    :try_start_0
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    const-string/jumbo v0, "device-token"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "push_token_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/helpshift/al;->a(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 1012
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "JSONException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected p()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()V
    .locals 2

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/ar;

    invoke-direct {v1, p0}, Lcom/helpshift/ar;-><init>(Lcom/helpshift/al;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1063
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1064
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1065
    return-void
.end method

.method protected r()V
    .locals 0

    .prologue
    .line 1174
    invoke-static {}, Lcom/helpshift/HSService;->a()V

    .line 1175
    return-void
.end method

.method protected s()V
    .locals 3

    .prologue
    .line 1178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    const-class v2, Lcom/helpshift/HSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1179
    iget-object v1, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1180
    return-void
.end method

.method protected t()V
    .locals 5

    .prologue
    .line 1183
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1184
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1185
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->o()Ljava/lang/String;

    move-result-object v2

    .line 1188
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->z()Lorg/json/JSONObject;

    move-result-object v0

    .line 1189
    const-string/jumbo v3, "enableInAppNotification"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1190
    const-string/jumbo v3, "enableInAppNotification"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unreg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v0

    .line 1199
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v1

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    const-class v2, Lcom/helpshift/HSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1202
    iget-object v1, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->q()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.7.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1204
    invoke-virtual {p0}, Lcom/helpshift/al;->s()V

    .line 1206
    :cond_1
    iget-object v1, p0, Lcom/helpshift/al;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1211
    :cond_2
    :goto_1
    return-void

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "startInAppService JSONException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 1209
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/al;->s()V

    goto :goto_1
.end method

.method protected u()V
    .locals 8

    .prologue
    .line 1226
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->O()Lorg/json/JSONObject;

    move-result-object v0

    .line 1228
    if-nez v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1232
    :cond_0
    new-instance v1, Lcom/helpshift/au;

    invoke-direct {v1, p0}, Lcom/helpshift/au;-><init>(Lcom/helpshift/al;)V

    .line 1241
    const-string/jumbo v2, "issue_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "refers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "state"

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "SendfailedMessages failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected declared-synchronized v()V
    .locals 9

    .prologue
    .line 1316
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/helpshift/ay;

    invoke-direct {v2, p0}, Lcom/helpshift/ay;-><init>(Lcom/helpshift/al;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->P()Lorg/json/JSONObject;

    move-result-object v1

    .line 1326
    iget-object v0, p0, Lcom/helpshift/al;->c:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 1327
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/al;->c:Ljava/util/Iterator;

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/helpshift/al;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/helpshift/al;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1332
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 1333
    const-string/jumbo v3, "p"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1334
    const-string/jumbo v3, "t"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1336
    invoke-virtual {p0, v2, v0, v3, v6}, Lcom/helpshift/al;->b(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v1

    .line 1337
    invoke-virtual {p0, v2, v0, v3, v6}, Lcom/helpshift/al;->a(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1339
    packed-switch v3, :pswitch_data_0

    .line 1369
    :goto_0
    monitor-exit p0

    return-void

    .line 1341
    :pswitch_0
    :try_start_2
    const-string/jumbo v0, "f"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "h"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    :try_start_3
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1345
    :pswitch_1
    :try_start_4
    const-string/jumbo v0, "profile-id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "device-token"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :pswitch_2
    invoke-static {v6}, Lcom/helpshift/e/aa;->b(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1351
    :pswitch_3
    const-string/jumbo v0, "mids"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string/jumbo v0, "src"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "at"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :pswitch_4
    const-string/jumbo v0, "r"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v0, "f"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/helpshift/al;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    .line 1364
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/al;->c:Ljava/util/Iterator;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected y()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1465
    sget-object v0, Lcom/helpshift/d/b/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "csat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
