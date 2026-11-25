.class public final enum Lcom/applovin/a/b/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/applovin/a/b/b;

.field public static final enum b:Lcom/applovin/a/b/b;

.field public static final enum c:Lcom/applovin/a/b/b;

.field private static final synthetic d:[Lcom/applovin/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/a/b/b;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/applovin/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/a/b/b;->a:Lcom/applovin/a/b/b;

    new-instance v0, Lcom/applovin/a/b/b;

    const-string/jumbo v1, "ACTIVITY_PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/applovin/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/a/b/b;->b:Lcom/applovin/a/b/b;

    new-instance v0, Lcom/applovin/a/b/b;

    const-string/jumbo v1, "ACTIVITY_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/applovin/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/a/b/b;->c:Lcom/applovin/a/b/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/a/b/b;

    sget-object v1, Lcom/applovin/a/b/b;->a:Lcom/applovin/a/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/a/b/b;->b:Lcom/applovin/a/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/a/b/b;->c:Lcom/applovin/a/b/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/a/b/b;->d:[Lcom/applovin/a/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/a/b/b;
    .locals 1

    const-class v0, Lcom/applovin/a/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/b;

    return-object v0
.end method

.method public static values()[Lcom/applovin/a/b/b;
    .locals 1

    sget-object v0, Lcom/applovin/a/b/b;->d:[Lcom/applovin/a/b/b;

    invoke-virtual {v0}, [Lcom/applovin/a/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/a/b/b;

    return-object v0
.end method
