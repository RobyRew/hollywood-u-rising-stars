.class public Lcom/sponsorpay/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field protected static b:Lcom/sponsorpay/a;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/sponsorpay/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    .line 50
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "%d.%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sponsorpay/a;->a:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/sponsorpay/a;

    invoke-direct {v0}, Lcom/sponsorpay/a;-><init>()V

    sput-object v0, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/a;->c:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/sponsorpay/c/s;

    invoke-direct {v0}, Lcom/sponsorpay/c/s;-><init>()V

    invoke-static {v0}, Lcom/sponsorpay/c/m;->a(Lcom/sponsorpay/c/e;)Z

    .line 63
    return-void
.end method

.method public static a()Lcom/sponsorpay/a/a;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    iget-object v0, v0, Lcom/sponsorpay/a;->d:Lcom/sponsorpay/a/a;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please start the SDK before accessing any of its resources.\nYou have to execute SponsorPay.start method first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    sget-object v0, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    iget-object v0, v0, Lcom/sponsorpay/a;->d:Lcom/sponsorpay/a/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/sponsorpay/a/a;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    invoke-direct {v0, p0}, Lcom/sponsorpay/a;->b(Ljava/lang/String;)Lcom/sponsorpay/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/sponsorpay/a;->b()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    invoke-virtual {v2, p0, p1, p2, v1}, Lcom/sponsorpay/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {}, Lcom/sponsorpay/c/c;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-static {v1}, Lcom/sponsorpay/c/c;->a(Landroid/content/Context;)Lcom/sponsorpay/c/c;

    .line 148
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 149
    invoke-static {p3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 151
    :cond_0
    new-instance v3, Lcom/sponsorpay/c/a/a;

    invoke-direct {v3, p3}, Lcom/sponsorpay/c/a/a;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-static {v3}, Lcom/sponsorpay/c/t;->a(Ljava/net/CookieStore;)V

    .line 153
    invoke-static {p2}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    sget-object v3, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    iget-object v3, v3, Lcom/sponsorpay/a;->d:Lcom/sponsorpay/a/a;

    invoke-static {v3, p3}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->requestConfig(Lcom/sponsorpay/a/a;Landroid/app/Activity;)V

    .line 160
    :goto_0
    sget-object v3, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    iget-object v3, v3, Lcom/sponsorpay/a;->d:Lcom/sponsorpay/a/a;

    invoke-virtual {v3}, Lcom/sponsorpay/a/a;->e()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a(Landroid/content/Context;)V

    .line 164
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    invoke-static {v1}, Lcom/sponsorpay/advertiser/b;->a(Landroid/content/Context;)V

    .line 176
    :cond_2
    :goto_1
    return-object v2

    .line 157
    :cond_3
    sget-object v3, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-virtual {v3, p3}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->startMediationAdapters(Landroid/app/Activity;)V

    goto :goto_0

    .line 169
    :cond_4
    invoke-static {}, Lcom/sponsorpay/c/k;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    const-string/jumbo v0, "SponsorPay"

    const-string/jumbo v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_5
    const-string/jumbo v0, "SponsorPay"

    const-string/jumbo v1, "Only devices running Android API level 10 and above are supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lcom/sponsorpay/a/a;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sponsorpay/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/a/a;

    .line 67
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "There are no credentials identified by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nYou have to execute SponsorPay.start method first."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/sponsorpay/a;->b:Lcom/sponsorpay/a;

    iget-object v0, v0, Lcom/sponsorpay/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sponsorpay/a;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/sponsorpay/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/a/a;

    .line 78
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/sponsorpay/a/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sponsorpay/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    iget-object v1, p0, Lcom/sponsorpay/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sponsorpay/a;->d:Lcom/sponsorpay/a/a;

    .line 85
    iget-object v0, p0, Lcom/sponsorpay/a;->d:Lcom/sponsorpay/a/a;

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    invoke-static {p3}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0, p3}, Lcom/sponsorpay/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
