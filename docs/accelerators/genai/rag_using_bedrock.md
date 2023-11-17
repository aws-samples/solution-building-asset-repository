### RAG using LangChain with Amazon Bedrock Titan text, and embedding, using OpenSearch vector engine:

This sample repository provides a sample code for using RAG (Retrieval augmented generation) method relaying on Amazon Bedrock Titan Embeddings Generation 1 (G1) LLM (Large Language Model), for creating text embedding that will be stored in Amazon OpenSearch with vector engine support for assisting with the prompt engineering task for more accurate response from LLMs.

After we successfully loaded embeddings into OpenSearch, we will then start querying our LLM, by using LangChain. We will ask questions, retrieving similar embedding for a more accurate prompt.

You can use --bedrock-model-id parameter, to seamlessly choose one of the available foundation model in Amazon Bedrock, that defaults to Anthropic Claude v2 and can be replaced to any other model from any other model provider to choose your best performing foundation model.

#### Anthropic:

Claude v2 python ./ask-bedrock-with-rag.py --ask "How will AI will change our every day life?"
Claude v1.3 python ./ask-bedrock-with-rag.py --bedrock-model-id anthropic.claude-v1 --ask "How will AI will change our every day life?"
Claude Instance v1.2 python ./ask-bedrock-with-rag.py --bedrock-model-id anthropic.claude-instant-v1 --ask "How will AI will change our every day life?"

#### AI21 Labs:

Jurassic-2 Ultra python ./ask-bedrock-with-rag.py --bedrock-model-id ai21.j2-ultra-v1 --ask "How will AI will change our every day life?"
Jurassic-2 Mid python ./ask-bedrock-with-rag.py --bedrock-model-id ai21.j2-mid-v1 --ask "How will AI will change our every day life?"


Click [here](https://github.com/aws-samples/rag-using-langchain-amazon-bedrock-and-opensearch) to access the library and start designing your solution.