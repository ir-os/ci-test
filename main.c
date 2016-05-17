
int arr[1000] = { 0 };

int delay(int count)
{
	int i;
	int arr_local[1000] = { 0 };

	for (i = 1; i < count; i++)
	{
		arr[i] = i * i;
		arr_local[i] = arr[i - 1];
	}

	return i;
}

int main()
{
	delay(2000000);
	return 0;
}

