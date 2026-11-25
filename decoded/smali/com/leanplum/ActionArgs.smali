.class public Lcom/leanplum/ActionArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/co",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leanplum/ActionArgs;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/co",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/leanplum/ActionArgs;->a:Ljava/util/List;

    return-object v0
.end method

.method public with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/leanplum/ActionArgs;"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string/jumbo v0, "Leanplum [ActionArgs]"

    const-string/jumbo v1, "with - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-object p0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/leanplum/ActionArgs;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/leanplum/co;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/co;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public withAction(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;
    .locals 2

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string/jumbo v0, "Leanplum [ActionArgs]"

    const-string/jumbo v1, "withAction - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-object p0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/leanplum/ActionArgs;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/leanplum/co;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public withAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;
    .locals 2

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string/jumbo v0, "Leanplum [ActionArgs]"

    const-string/jumbo v1, "withAsset - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-object p0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/leanplum/ActionArgs;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/leanplum/co;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public withColor(Ljava/lang/String;I)Lcom/leanplum/ActionArgs;
    .locals 2

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string/jumbo v0, "Leanplum [ActionArgs]"

    const-string/jumbo v1, "withColor - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-object p0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/leanplum/ActionArgs;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/leanplum/co;->a(Ljava/lang/String;I)Lcom/leanplum/co;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public withFile(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/ActionArgs;
    .locals 2

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string/jumbo v0, "Leanplum [ActionArgs]"

    const-string/jumbo v1, "withFile - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-object p0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/leanplum/ActionArgs;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/leanplum/co;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/co;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
