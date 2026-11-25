.class public Lcom/sponsorpay/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/sponsorpay/c/j;


# instance fields
.field private b:Lcom/sponsorpay/c/f;

.field private c:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/sponsorpay/c/j;

    invoke-direct {v0}, Lcom/sponsorpay/c/j;-><init>()V

    sput-object v0, Lcom/sponsorpay/c/j;->a:Lcom/sponsorpay/c/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sponsorpay/c/ab;

    invoke-direct {v0, p0}, Lcom/sponsorpay/c/ab;-><init>(Lcom/sponsorpay/c/j;)V

    iput-object v0, p0, Lcom/sponsorpay/c/j;->c:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    sget-object v1, Lcom/sponsorpay/c/j;->a:Lcom/sponsorpay/c/j;

    .line 2035
    const/4 v0, 0x0

    .line 2036
    iget-object v2, v1, Lcom/sponsorpay/c/j;->b:Lcom/sponsorpay/c/f;

    if-eqz v2, :cond_0

    .line 2037
    iget-object v0, v1, Lcom/sponsorpay/c/j;->b:Lcom/sponsorpay/c/f;

    invoke-interface {v0, p0}, Lcom/sponsorpay/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    :cond_0
    invoke-static {v0}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2040
    iget-object v0, v1, Lcom/sponsorpay/c/j;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    :cond_1
    return-object v0
.end method
