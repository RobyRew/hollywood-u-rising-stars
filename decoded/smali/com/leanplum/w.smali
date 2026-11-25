.class final enum Lcom/leanplum/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/leanplum/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/leanplum/w;

.field public static final enum b:Lcom/leanplum/w;

.field private static final synthetic c:[Lcom/leanplum/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/leanplum/w;

    const-string/jumbo v1, "SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/leanplum/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/w;->a:Lcom/leanplum/w;

    new-instance v0, Lcom/leanplum/w;

    const-string/jumbo v1, "RECEIVER"

    invoke-direct {v0, v1, v3}, Lcom/leanplum/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/w;->b:Lcom/leanplum/w;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/leanplum/w;

    sget-object v1, Lcom/leanplum/w;->a:Lcom/leanplum/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leanplum/w;->b:Lcom/leanplum/w;

    aput-object v1, v0, v3

    sput-object v0, Lcom/leanplum/w;->c:[Lcom/leanplum/w;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leanplum/w;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/leanplum/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/leanplum/w;

    return-object v0
.end method

.method public static values()[Lcom/leanplum/w;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/leanplum/w;->c:[Lcom/leanplum/w;

    invoke-virtual {v0}, [Lcom/leanplum/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leanplum/w;

    return-object v0
.end method
