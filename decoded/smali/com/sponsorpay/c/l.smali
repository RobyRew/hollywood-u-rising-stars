.class public final enum Lcom/sponsorpay/c/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/c/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sponsorpay/c/l;

.field public static final enum b:Lcom/sponsorpay/c/l;

.field public static final enum c:Lcom/sponsorpay/c/l;

.field public static final enum d:Lcom/sponsorpay/c/l;

.field public static final enum e:Lcom/sponsorpay/c/l;

.field private static final synthetic f:[Lcom/sponsorpay/c/l;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sponsorpay/c/l;

    const-string/jumbo v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/c/l;->a:Lcom/sponsorpay/c/l;

    .line 18
    new-instance v0, Lcom/sponsorpay/c/l;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/c/l;->b:Lcom/sponsorpay/c/l;

    .line 19
    new-instance v0, Lcom/sponsorpay/c/l;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/c/l;->c:Lcom/sponsorpay/c/l;

    .line 20
    new-instance v0, Lcom/sponsorpay/c/l;

    const-string/jumbo v1, "WARNING"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/c/l;->d:Lcom/sponsorpay/c/l;

    .line 21
    new-instance v0, Lcom/sponsorpay/c/l;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/c/l;->e:Lcom/sponsorpay/c/l;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/c/l;

    sget-object v1, Lcom/sponsorpay/c/l;->a:Lcom/sponsorpay/c/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/c/l;->b:Lcom/sponsorpay/c/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/c/l;->c:Lcom/sponsorpay/c/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/c/l;->d:Lcom/sponsorpay/c/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/c/l;->e:Lcom/sponsorpay/c/l;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sponsorpay/c/l;->f:[Lcom/sponsorpay/c/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/c/l;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sponsorpay/c/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/c/l;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/c/l;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sponsorpay/c/l;->f:[Lcom/sponsorpay/c/l;

    invoke-virtual {v0}, [Lcom/sponsorpay/c/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/c/l;

    return-object v0
.end method
