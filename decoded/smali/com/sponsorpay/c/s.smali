.class public final Lcom/sponsorpay/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sponsorpay/c/e;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MPI"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "VPL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "JUD"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/c/s;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/c/s;->b:Ljava/util/HashMap;

    .line 22
    iget-object v0, p0, Lcom/sponsorpay/c/s;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "sdk_features"

    const-string/jumbo v2, ","

    sget-object v3, Lcom/sponsorpay/c/s;->a:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sponsorpay/c/s;->b:Ljava/util/HashMap;

    return-object v0
.end method
