.class public Lcom/sponsorpay/publisher/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/publisher/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sponsorpay/publisher/b;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 64
    sput-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->a:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->b:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->c:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "An error happened when performing this operation"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->d:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "An error happened when loading the offer wall"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->e:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "An error happened when loading the offer wall (no internet connection)"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->f:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->g:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->h:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "You don\'t have the Google Play Store application on your device to complete App Install offers."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->i:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Thanks! Your reward will be paid out shortly"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->j:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Congratulations! You\'ve earned %.0f %s!"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->k:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "coins"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->l:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->m:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "We\'re sorry, something went wrong. Please try again."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->n:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Your Internet connection has been lost. Please try again later."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->o:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->p:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->q:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Tap anywhere to discover more about this ad"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->r:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Exit Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->s:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Close Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->t:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Resume Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->u:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->v:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "An error has occurred while trying to load the video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/b;->w:Lcom/sponsorpay/publisher/b;

    const-string/jumbo v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    invoke-static {}, Lcom/sponsorpay/c/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {p4, p5}, Lcom/sponsorpay/publisher/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 378
    invoke-static {p0}, Lcom/sponsorpay/a;->a(Ljava/lang/String;)Lcom/sponsorpay/a/a;

    move-result-object v2

    .line 380
    const-string/jumbo v3, "EXTRA_CREDENTIALS_TOKEN_KEY"

    invoke-virtual {v2}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string/jumbo v2, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v2, "EXTRA_CURRENCY_NAME_KEY"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string/jumbo v2, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 386
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/sponsorpay/publisher/a;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    if-nez p0, :cond_0

    .line 918
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 921
    :cond_0
    invoke-static {p1}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    const-string/jumbo p1, ""

    .line 924
    :cond_1
    const-string/jumbo v0, "placement_id"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/a/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/sponsorpay/publisher/a/h;

    invoke-direct {v0, p1, p0, p2}, Lcom/sponsorpay/publisher/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/a/b;)V

    .line 550
    invoke-virtual {v0, p5}, Lcom/sponsorpay/publisher/a/h;->a(Ljava/util/Map;)Lcom/sponsorpay/publisher/a/h;

    .line 551
    invoke-virtual {v0, p6}, Lcom/sponsorpay/publisher/a/h;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/a/h;

    .line 552
    invoke-virtual {v0, p3, p4}, Lcom/sponsorpay/publisher/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/f;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-static {}, Lcom/sponsorpay/a;->a()Lcom/sponsorpay/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 587
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/a;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/f;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/a/b;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/f;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/a/b;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/f;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/a/b;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 727
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/a;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/f;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/a/b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/f;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/a/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/f;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/a/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 755
    sget-object v0, Lcom/sponsorpay/publisher/mbe/b;->a:Lcom/sponsorpay/publisher/mbe/b;

    .line 756
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/b;->b()Z

    move-result v1

    .line 757
    if-eqz v1, :cond_0

    .line 758
    invoke-static {p4, p7}, Lcom/sponsorpay/publisher/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 760
    invoke-static {p0}, Lcom/sponsorpay/a;->a(Ljava/lang/String;)Lcom/sponsorpay/a/a;

    move-result-object v3

    .line 761
    invoke-virtual {v0, p3}, Lcom/sponsorpay/publisher/mbe/b;->a(Ljava/lang/String;)Z

    .line 762
    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/b;->a(Ljava/util/Map;)Z

    .line 763
    invoke-virtual {v0, p5}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/a/b;)Z

    .line 764
    invoke-virtual {v0, p6}, Lcom/sponsorpay/publisher/mbe/b;->b(Ljava/lang/String;)Z

    .line 766
    new-instance v2, Lcom/sponsorpay/publisher/mbe/z;

    invoke-direct {v2, v3, p1, v0, p2}, Lcom/sponsorpay/publisher/mbe/z;-><init>(Lcom/sponsorpay/a/a;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/b;Lcom/sponsorpay/publisher/mbe/f;)V

    .line 767
    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/z;->a()V

    .line 770
    :cond_0
    return v1
.end method
