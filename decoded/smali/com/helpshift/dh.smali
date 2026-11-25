.class final Lcom/helpshift/dh;
.super Ljava/util/HashMap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/helpshift/dh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/helpshift/dh;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/dh;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "ngram"

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/dh;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method
