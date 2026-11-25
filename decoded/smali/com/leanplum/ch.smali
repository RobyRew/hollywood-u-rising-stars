.class Lcom/leanplum/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1559
    invoke-static {}, Lcom/leanplum/Leanplum;->e()V

    .line 1560
    invoke-static {}, Lcom/leanplum/y;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1561
    invoke-static {}, Lcom/leanplum/Leanplum;->d()V

    .line 1563
    :cond_0
    return-void
.end method
