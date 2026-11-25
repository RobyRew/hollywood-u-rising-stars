.class public Lcom/sponsorpay/advertiser/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/sponsorpay/advertiser/b;


# instance fields
.field private a:Lcom/sponsorpay/advertiser/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The SDK was not initialized yet. You should call SponsorPay.start method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Lcom/sponsorpay/advertiser/c;

    invoke-direct {v0, p1}, Lcom/sponsorpay/advertiser/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/advertiser/b;->a:Lcom/sponsorpay/advertiser/c;

    .line 57
    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/sponsorpay/c/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v0, "SponsorPayAdvertiser"

    const-string/jumbo v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v0, "SponsorPayAdvertiser"

    const-string/jumbo v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sponsorpay/advertiser/b;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 168
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/sponsorpay/a;->a()Lcom/sponsorpay/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0, p0, p1}, Lcom/sponsorpay/advertiser/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/sponsorpay/c/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2060
    sget-object v0, Lcom/sponsorpay/advertiser/b;->b:Lcom/sponsorpay/advertiser/b;

    if-nez v0, :cond_0

    .line 2061
    new-instance v0, Lcom/sponsorpay/advertiser/b;

    invoke-direct {v0, p1}, Lcom/sponsorpay/advertiser/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sponsorpay/advertiser/b;->b:Lcom/sponsorpay/advertiser/b;

    .line 198
    :cond_0
    sget-object v0, Lcom/sponsorpay/advertiser/b;->b:Lcom/sponsorpay/advertiser/b;

    .line 2078
    invoke-static {p0}, Lcom/sponsorpay/a;->a(Ljava/lang/String;)Lcom/sponsorpay/a/a;

    move-result-object v1

    .line 2081
    new-instance v2, Lcom/sponsorpay/advertiser/d;

    iget-object v0, v0, Lcom/sponsorpay/advertiser/b;->a:Lcom/sponsorpay/advertiser/c;

    invoke-direct {v2, v1, v0}, Lcom/sponsorpay/advertiser/d;-><init>(Lcom/sponsorpay/a/a;Lcom/sponsorpay/advertiser/c;)V

    .line 2082
    invoke-virtual {v2, p2}, Lcom/sponsorpay/advertiser/d;->a(Ljava/util/Map;)V

    .line 2083
    invoke-virtual {v2}, Lcom/sponsorpay/advertiser/d;->a()V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/sponsorpay/advertiser/b;->a()V

    goto :goto_0
.end method
