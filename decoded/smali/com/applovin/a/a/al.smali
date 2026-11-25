.class public final enum Lcom/applovin/a/a/al;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/applovin/a/a/al;

.field public static final enum b:Lcom/applovin/a/a/al;

.field private static final synthetic c:[Lcom/applovin/a/a/al;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/a/a/al;

    const-string/jumbo v1, "WhiteXOnOpaqueBlack"

    invoke-direct {v0, v1, v2}, Lcom/applovin/a/a/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/a/a/al;->a:Lcom/applovin/a/a/al;

    new-instance v0, Lcom/applovin/a/a/al;

    const-string/jumbo v1, "WhiteXOnTransparentGrey"

    invoke-direct {v0, v1, v3}, Lcom/applovin/a/a/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/a/a/al;->b:Lcom/applovin/a/a/al;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applovin/a/a/al;

    sget-object v1, Lcom/applovin/a/a/al;->a:Lcom/applovin/a/a/al;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/a/a/al;->b:Lcom/applovin/a/a/al;

    aput-object v1, v0, v3

    sput-object v0, Lcom/applovin/a/a/al;->c:[Lcom/applovin/a/a/al;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
