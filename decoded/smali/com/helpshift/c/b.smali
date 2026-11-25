.class public Lcom/helpshift/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/c/a;

.field private final b:Ljava/lang/StringBuilder;

.field private final c:Ljava/lang/StringBuilder;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/helpshift/c/a;I)V
    .locals 2

    .prologue
    .line 998
    iput-object p1, p0, Lcom/helpshift/c/b;->a:Lcom/helpshift/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/c/b;->a:Lcom/helpshift/c/a;

    invoke-virtual {v1}, Lcom/helpshift/c/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/c/b;->a:Lcom/helpshift/c/a;

    invoke-virtual {v1}, Lcom/helpshift/c/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    .line 999
    iput p2, p0, Lcom/helpshift/c/b;->d:I

    .line 1000
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(C)V
    .locals 0

    .prologue
    .line 1003
    invoke-virtual {p0, p1}, Lcom/helpshift/c/b;->b(C)V

    .line 1004
    invoke-virtual {p0, p1}, Lcom/helpshift/c/b;->c(C)V

    .line 1005
    return-void
.end method

.method public a(CC)V
    .locals 0

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Lcom/helpshift/c/b;->b(C)V

    .line 1009
    invoke-virtual {p0, p2}, Lcom/helpshift/c/b;->c(C)V

    .line 1010
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lcom/helpshift/c/b;->b(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0, p1}, Lcom/helpshift/c/b;->c(Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1030
    invoke-virtual {p0, p1}, Lcom/helpshift/c/b;->b(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0, p2}, Lcom/helpshift/c/b;->c(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(C)V
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/c/b;->d:I

    if-ge v0, v1, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1016
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1035
    iget v0, p0, Lcom/helpshift/c/b;->d:I

    iget-object v1, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1036
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public c(C)V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/c/b;->d:I

    if-ge v0, v1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1022
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1044
    iget v0, p0, Lcom/helpshift/c/b;->d:I

    iget-object v1, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1045
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v1, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/helpshift/c/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/c/b;->d:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpshift/c/b;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/helpshift/c/b;->d:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
