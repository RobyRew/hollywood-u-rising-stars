.class public Lcom/sponsorpay/publisher/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sponsorpay/publisher/a/f;


# static fields
.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/publisher/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z


# instance fields
.field protected a:Lcom/sponsorpay/a/a;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/sponsorpay/publisher/a/b;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sponsorpay/publisher/a/h;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/a/b;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p2}, Lcom/sponsorpay/a;->a(Ljava/lang/String;)Lcom/sponsorpay/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    .line 106
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Security token has not been set on the credentials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-nez p3, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "currencyServerListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/sponsorpay/publisher/a/h;->b:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/sponsorpay/publisher/a/h;->d:Lcom/sponsorpay/publisher/a/b;

    .line 115
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/a/h;->a(Lcom/sponsorpay/a/a;)Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/sponsorpay/a/a;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->b:Landroid/content/Context;

    const-string/jumbo v1, "SponsorPayPublisherState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DEFAULT_CURRENCY_ID_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/sponsorpay/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    invoke-static {p1}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string/jumbo p1, ""

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "STATE_LATEST_CURRENCY_TRANSACTION_ID_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sponsorpay/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sponsorpay/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_STATE_LATEST_TRANSACTION_CURRENCY_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/sponsorpay/a/a;)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->b:Landroid/content/Context;

    const-string/jumbo v1, "SponsorPayPublisherState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DEFAULT_CURRENCY_ID_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sponsorpay/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    return-void
.end method

.method private b(Lcom/sponsorpay/publisher/a/e;)V
    .locals 3

    .prologue
    .line 381
    sget-object v0, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/a/i;

    .line 382
    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/sponsorpay/publisher/a/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/a/i;-><init>(Lcom/sponsorpay/publisher/a/h;B)V

    .line 384
    sget-object v1, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_0
    invoke-static {v0, p1}, Lcom/sponsorpay/publisher/a/i;->a(Lcom/sponsorpay/publisher/a/i;Lcom/sponsorpay/publisher/a/e;)Lcom/sponsorpay/publisher/a/e;

    .line 387
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sponsorpay/publisher/a/h;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sponsorpay/publisher/a/h;->h:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/sponsorpay/publisher/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sponsorpay/publisher/a/h;"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sponsorpay/publisher/a/h;->c:Ljava/util/Map;

    .line 123
    return-object p0
.end method

.method public a(Lcom/sponsorpay/publisher/a/e;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 297
    instance-of v0, p1, Lcom/sponsorpay/publisher/a/g;

    if-eqz v0, :cond_6

    .line 298
    check-cast p1, Lcom/sponsorpay/publisher/a/g;

    .line 299
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/a/h;->a(Lcom/sponsorpay/a/a;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->c()Ljava/lang/String;

    move-result-object v5

    .line 302
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-direct {p0, v5, v0}, Lcom/sponsorpay/publisher/a/h;->a(Ljava/lang/String;Lcom/sponsorpay/a/a;)V

    .line 308
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->b:Landroid/content/Context;

    const-string/jumbo v1, "SponsorPayPublisherState"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-static {v1, v5}, Lcom/sponsorpay/publisher/a/h;->a(Lcom/sponsorpay/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sponsorpay/publisher/a/h;->c:Ljava/util/Map;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sponsorpay/publisher/a/d;->a(Lcom/sponsorpay/publisher/a/f;Lcom/sponsorpay/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v1, Lcom/sponsorpay/publisher/a/g;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->e()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sponsorpay/publisher/a/g;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/a/h;->b(Lcom/sponsorpay/publisher/a/e;)V

    .line 4207
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->b:Landroid/content/Context;

    const-string/jumbo v1, "SponsorPayPublisherState"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4208
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4209
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 4211
    invoke-static {v1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "NO_TRANSACTION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4212
    iget-object v4, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/publisher/a/h;->a(Lcom/sponsorpay/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4215
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4217
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4218
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-direct {p0, v0, v1}, Lcom/sponsorpay/publisher/a/h;->a(Ljava/lang/String;Lcom/sponsorpay/a/a;)V

    .line 3272
    :cond_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3273
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->h:Ljava/lang/String;

    .line 3280
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->a()D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/sponsorpay/publisher/a/h;->g:Z

    if-eqz v1, :cond_4

    .line 3281
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Lcom/sponsorpay/publisher/b;->j:Lcom/sponsorpay/publisher/b;

    invoke-static {v2}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->a()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3283
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->b:Landroid/content/Context;

    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->d:Lcom/sponsorpay/publisher/a/b;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/a/b;->a(Lcom/sponsorpay/publisher/a/g;)V

    goto/16 :goto_0

    .line 3275
    :cond_5
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/a/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 3276
    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/sponsorpay/publisher/b;->k:Lcom/sponsorpay/publisher/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 324
    :cond_6
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/a/h;->b(Lcom/sponsorpay/publisher/a/e;)V

    .line 325
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->d:Lcom/sponsorpay/publisher/a/b;

    check-cast p1, Lcom/sponsorpay/publisher/a/a;

    invoke-interface {v0, p1}, Lcom/sponsorpay/publisher/a/b;->a(Lcom/sponsorpay/publisher/a/a;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-static {}, Lcom/sponsorpay/c/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/sponsorpay/publisher/a/a;

    sget-object v1, Lcom/sponsorpay/publisher/a/c;->e:Lcom/sponsorpay/publisher/a/c;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Only devices running Android API level 10 and above are supported"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/a/a;-><init>(Lcom/sponsorpay/publisher/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->d:Lcom/sponsorpay/publisher/a/b;

    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/a/b;->a(Lcom/sponsorpay/publisher/a/a;)V

    .line 195
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-object p2, p0, Lcom/sponsorpay/publisher/a/h;->i:Ljava/lang/String;

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1390
    sget-object v0, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/a/i;

    .line 1391
    if-nez v0, :cond_1

    .line 1392
    new-instance v0, Lcom/sponsorpay/publisher/a/i;

    invoke-direct {v0, p0, v4}, Lcom/sponsorpay/publisher/a/i;-><init>(Lcom/sponsorpay/publisher/a/h;B)V

    .line 1393
    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/a/i;->a(Lcom/sponsorpay/publisher/a/i;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1394
    sget-object v2, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    :cond_1
    invoke-static {v0}, Lcom/sponsorpay/publisher/a/i;->a(Lcom/sponsorpay/publisher/a/i;)Ljava/util/Calendar;

    move-result-object v0

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const-string/jumbo v0, "SPVirtualCurrencyConnector"

    const-string/jumbo v1, "The VCS was queried less than 15s ago.Replying with cached response"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    sget-object v0, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/a/i;

    .line 1401
    if-nez v0, :cond_2

    .line 1402
    new-instance v0, Lcom/sponsorpay/publisher/a/i;

    invoke-direct {v0, p0, v4}, Lcom/sponsorpay/publisher/a/i;-><init>(Lcom/sponsorpay/publisher/a/h;B)V

    .line 1403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/a/i;->a(Lcom/sponsorpay/publisher/a/i;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1404
    sget-object v1, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    :cond_2
    invoke-static {v0}, Lcom/sponsorpay/publisher/a/i;->b(Lcom/sponsorpay/publisher/a/i;)Lcom/sponsorpay/publisher/a/e;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/a/h;->a(Lcom/sponsorpay/publisher/a/e;)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->d:Lcom/sponsorpay/publisher/a/b;

    new-instance v1, Lcom/sponsorpay/publisher/a/a;

    sget-object v2, Lcom/sponsorpay/publisher/a/c;->e:Lcom/sponsorpay/publisher/a/c;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Unknown error"

    invoke-direct {v1, v2, v3, v4}, Lcom/sponsorpay/publisher/a/a;-><init>(Lcom/sponsorpay/publisher/a/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/a/b;->a(Lcom/sponsorpay/publisher/a/a;)V

    goto :goto_0

    .line 186
    :cond_4
    const/16 v0, 0xd

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 2372
    sget-object v0, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/a/i;

    .line 2373
    if-nez v0, :cond_5

    .line 2374
    new-instance v0, Lcom/sponsorpay/publisher/a/i;

    invoke-direct {v0, p0, v4}, Lcom/sponsorpay/publisher/a/i;-><init>(Lcom/sponsorpay/publisher/a/h;B)V

    .line 2375
    sget-object v2, Lcom/sponsorpay/publisher/a/h;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sponsorpay/publisher/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    :cond_5
    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/a/i;->a(Lcom/sponsorpay/publisher/a/i;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 188
    sget-boolean v0, Lcom/sponsorpay/publisher/a/h;->f:Z

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/a/h;->g:Z

    .line 191
    invoke-static {p1}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3230
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sponsorpay/publisher/a/h;->i:Ljava/lang/String;

    .line 3244
    invoke-static {v2}, Lcom/sponsorpay/a;->a(Ljava/lang/String;)Lcom/sponsorpay/a/a;

    move-result-object v2

    .line 3245
    const-string/jumbo v3, "SponsorPayPublisherState"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3247
    invoke-static {v0}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3248
    invoke-direct {p0, v2}, Lcom/sponsorpay/publisher/a/h;->a(Lcom/sponsorpay/a/a;)Ljava/lang/String;

    move-result-object v0

    .line 3251
    :cond_6
    invoke-static {v0}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3252
    const-string/jumbo v0, "NO_TRANSACTION"

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/sponsorpay/publisher/a/h;->a:Lcom/sponsorpay/a/a;

    iget-object v2, p0, Lcom/sponsorpay/publisher/a/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/sponsorpay/publisher/a/h;->c:Ljava/util/Map;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sponsorpay/publisher/a/d;->a(Lcom/sponsorpay/publisher/a/f;Lcom/sponsorpay/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 3255
    :cond_7
    invoke-static {v2, v0}, Lcom/sponsorpay/publisher/a/h;->a(Lcom/sponsorpay/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "NO_TRANSACTION"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, p1

    goto :goto_1
.end method
