.class final Lcom/helpshift/di;
.super Ljava/util/HashMap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    iput-object p1, p0, Lcom/helpshift/di;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string/jumbo v0, "value"

    invoke-static {}, Lcom/helpshift/de;->c()Lcom/helpshift/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/di;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/di;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "metaphone"

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/di;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
